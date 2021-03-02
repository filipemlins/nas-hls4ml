
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Jul  1 15:05:57 2020

@author: filipe
"""


from tensorflow.keras.utils import to_categorical
from sklearn.datasets import fetch_openml
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder, StandardScaler
import numpy as np
import matplotlib.pyplot as plt

import pandas as pd


##pre processing
train = pd.read_csv('train.csv')
test = pd.read_csv('test.csv')

Y_train1 = train[['label']]
X_train1 = train.drop(train.columns[[0]], axis=1)
X_test1 = test


X_train1 = np.array(X_train1)
X_test1 = np.array(X_test1)

#Reshape the training and test set
X_train1 = X_train1.reshape(X_train1.shape[0], 28, 28, 1)/255
X_test1 = X_test1.reshape(X_test1.shape[0], 28, 28, 1)/255

#Padding the images by 2 pixels since in the paper input images were 32x32
X_train1 = np.pad(X_train1, ((0,0),(2,2),(2,2),(0,0)), 'constant')
X_test1 = np.pad(X_test1, ((0,0),(2,2),(2,2),(0,0)), 'constant')

X_train, X_test, Y_train, Y_test = train_test_split(X_train1, Y_train1, test_size=0.25, random_state=42)

#Standardization
mean_px = X_train.mean().astype(np.float32)
std_px = X_train.std().astype(np.float32)
X_train = (X_train - mean_px)/(std_px)

#One-hot encoding the labels
Y_train = to_categorical(Y_train)

print(X_train.shape[0], "train samples")
print(X_test.shape[0], "test samples")


#scaler = StandardScaler().fit(X_train)
#X_train = scaler.transform(X_train)
#X_test = scaler.transform(X_test)

from tensorflow.keras.models import Sequential
from tensorflow.keras.optimizers import Adam
from tensorflow.keras.regularizers import l1
from callbacks import all_callbacks
from tensorflow.keras.layers import Activation, MaxPooling2D, Flatten, Conv2D, Dense
from sklearn.metrics import accuracy_score

model = Sequential()

model.add(Conv2D(8, (4, 4), strides=(1,1), input_shape=(32,32, 1), name="conv2d_0_m"))

model.add(Activation(activation='relu', name='relu1'))
model.add(MaxPooling2D(pool_size = (2,2), strides = (2,2), name='max1'))

model.add(Conv2D(
    16, (2, 2), strides=(1,1),
    name="conv2d_1_m"))

model.add(Activation(activation='relu', name='relu2'))
model.add(MaxPooling2D(pool_size = (2,2), strides = (2,2), name='max2'))
model.add(Flatten())
model.add(Dense(120, name='fc1',
                 kernel_initializer='lecun_uniform', kernel_regularizer=l1(0.0001)))
model.add(Activation(activation='relu', name='relu3'))
model.add(Dense(84, name='fc2',
                 kernel_initializer='lecun_uniform', kernel_regularizer=l1(0.0001)))
model.add(Activation(activation='relu', name='relu4'))
model.add(Dense(10, name='output',
                 kernel_initializer='lecun_uniform', kernel_regularizer=l1(0.0001)))
model.add(Activation(activation='softmax', name='softmax'))

#from tensorflow_model_optimization.python.core.sparsity.keras import prune, pruning_callbacks, pruning_schedule
#from tensorflow_model_optimization.sparsity.keras import strip_pruning
#pruning_params = {"pruning_schedule" : pruning_schedule.ConstantSparsity(0.75, begin_step=2000, frequency=100)}
#model = prune.prune_low_magnitude(model, **pruning_params)

train = True

import keras

if train:
    adam = Adam(lr=0.0001)

    model.compile(optimizer=adam, loss=keras.losses.categorical_crossentropy, metrics=['accuracy'])
    callbacks = all_callbacks(stop_patience = 1000,
                              lr_factor = 0.5,
                              lr_patience = 10,
                              lr_epsilon = 0.000001,
                              lr_cooldown = 2,
                              lr_minimum = 0.0000001,
                              outputDir = 'model_1')
 #   callbacks.callbacks.append(pruning_callbacks.UpdatePruningStep())
    model.fit(X_train, Y_train, batch_size=1024,
              epochs=30, validation_split=0.25, shuffle=True, callbacks = callbacks.callbacks)
     # Save the model again but with the pruning 'stripped' to use the regular layer types
  #  model = strip_pruning(model)
    model.save('model_1/KERAS_check_best_model.h5')
else:
    from tensorflow.keras.models import load_model
    from qkeras.utils import _add_supported_quantized_objects
    co = {}
    _add_supported_quantized_objects(co)
    model = load_model('model_1/KERAS_check_best_model.h5', custom_objects=co)

import hls4ml


config = hls4ml.utils.config_from_keras_model(model, granularity='model', default_precision='ap_fixed<13,3,AP_RND,AP_SAT>')
#config['LayerName']['Conv2D']['ReuseFactor'] = 2000

print(config)
config['Model']['ReuseFactor'] = 200
#config['LayerName']['softmax']['exp_table_t'] = 'ap_fixed<18,8>'
#config['LayerName']['softmax']['inv_table_t'] = 'ap_fixed<18,4>'

hls_model = hls4ml.converters.convert_from_keras_model(model,
                                                       hls_config=config,
                                                       output_dir='model_1/hls4ml_prj',
                                                       fpga_part='xc7z007sclg225-1')

hls_model.compile()

#import plotting
#import matplotlib.pyplot as plt
#from sklearn.metrics import accuracy_score
#from tensorflow.keras.models import load_model
#model_ref = load_model('model_1/KERAS_check_best_model.h5')
#accuracy_score1 = accuracy_score(Y_test, np.argmax(model.predict(X_test), axis=1))
#print("{}".format(accuracy_score1))

z = np.argmax(hls_model.predict(X_test), axis=1)
accuracy_score2 = accuracy_score(Y_test, z)
print("{}".format(accuracy_score2))

#print("Accuracy unpruned:  {}".format(accuracy_score(np.argmax(y_test, axis=1), np.argmax(model_ref.predict(X_test), axis=1))))

#plt.figure(figsize=(9, 9))
#_ = plotting.makeRoc(X_train, Y_train, le.classes_, model)
##plt.gca().set_prop_cycle(None) # reset the colors
##_ = plotting.makeRoc(X_test, y_test, le.classes_, model_ref, linestyle='--')
#plt.gca().set_prop_cycle(None) # reset the colors
#_ = plotting.makeRoc(X_train, Y_train, le.classes_, hls_model, linestyle=':')

hls_model.build(synth=True)

import xmltodict
with open('model_1/hls4ml_prj/myproject_prj/solution1/syn/report/myproject_csynth.xml') as fd:
    doc = xmltodict.parse(fd.read())

AverageLatency = int(doc['profile']['PerformanceEstimates']['SummaryOfOverallLatency']['Average-caseLatency'])
EstimatedClockPeriod = float(doc['profile']['PerformanceEstimates']['SummaryOfTimingAnalysis']['EstimatedClockPeriod'])
BRAM = int(doc['profile']['AreaEstimates']['Resources']['BRAM_18K'])
DSP = int(doc['profile']['AreaEstimates']['Resources']['DSP48E'])
FF = int(doc['profile']['AreaEstimates']['Resources']['FF'])
LUT = int(doc['profile']['AreaEstimates']['Resources']['LUT'])

BRAM_available = int(doc['profile']['AreaEstimates']['AvailableResources']['BRAM_18K'])
DSP_available = int(doc['profile']['AreaEstimates']['AvailableResources']['DSP48E'])
FF_available = int(doc['profile']['AreaEstimates']['AvailableResources']['FF'])
LUT_available = int(doc['profile']['AreaEstimates']['AvailableResources']['LUT'])
dic_usage = [BRAM/BRAM_available, DSP/DSP_available, FF/FF_available, LUT/LUT_available]
print(BRAM, DSP, FF, LUT)
print(dic_usage[0], dic_usage[1], dic_usage[2], dic_usage[3])