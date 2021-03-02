#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Feb 15 14:48:07 2021

@author: filipe
"""


from tensorflow.keras.utils import to_categorical
from sklearn.datasets import fetch_openml
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder, StandardScaler
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import tensorflow as tf
from tensorflow.keras.models import Sequential
from tensorflow.keras.optimizers import Adam
from tensorflow.keras.regularizers import l1
from callbacks import all_callbacks
from tensorflow.keras.layers import Activation, MaxPooling2D, Flatten, Conv2D, Dense
import hls4ml
import xmltodict
import numpy as np
import random
import keras
from sklearn.metrics import accuracy_score
from keras import backend as K
from random import randint
import shutil
import os

from distutils.dir_util import copy_tree



def change_precision(x,y):
    default_precision = 'ap_fixed<'+ str(x) +','+str(y)+',AP_RND,AP_SAT>'
    return default_precision


def reset_weights(model):
  for layer in model.layers:
    if isinstance(layer, tf.keras.Model):
      reset_weights(layer)
      continue
    for k, initializer in layer.__dict__.items():
      if "initializer" not in k:
        continue
      # find the corresponding variable
      var = getattr(layer, k.replace("_initializer", ""))
      var.assign(initializer(var.shape, var.dtype))


def create_model():
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

    return model

def get_resource_usage(path_csynth, dic):
        with open(path_csynth) as fd:
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

        dic[0] = BRAM/BRAM_available
        dic[1] = DSP/DSP_available
        dic[2] = FF/FF_available
        dic[3] = LUT/LUT_available
        print(BRAM, DSP, FF, LUT)
        print(dic[0], dic[1], dic[2], dic[3])
        return dic, AverageLatency

def get_accuracy_csim(csim_log_path):
        f=open(csim_log_path)
        lines=f.readlines()
        accuracy = float(lines[5].rstrip("\n"))

##pre processing
train = pd.read_csv('train.csv')
test = pd.read_csv('test.csv')

Y_train1 = train[['label']]
X_train1 = train.drop(train.columns[[0]], axis=1)
X_test1 = test


X_train1 = np.array(X_train1)
X_test1 = np.array(X_test1)

#Reshape the training and test set
X_train1 = X_train1.reshape(X_train1.shape[0], 28, 28, 1)/256
X_test1 = X_test1.reshape(X_test1.shape[0], 28, 28, 1)/256
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

path = 'model_multistart/'
destination_test_cpp = 'model_multistart/0/hls4ml_prj/'
source_test_cpp = 'model_multistart/myproject_test.cpp'

source_tb_data = 'model_multistart/tb_data'
destination_tb_data = 'model_multistart/0/hls4ml_prj/tb_data'

path_csynth = 'model_multistart/0/hls4ml_prj/myproject_prj/solution1/syn/report/myproject_csynth.xml'
csim_log_path = 'model_multistart/0/hls4ml_prj/myproject_prj/solution1/csim/report/myproject_csim.log'

factor = [1500, 2000, 2500, 3000, 3500, 4000, 4500, 5000, 15000, 24000]

num_model = 0
dic_tested = []
dic_all = []

resource_usage_obj = 1.0
accuracy_obj = 1
accuracy = 0

resource = 2.0
dic_usage  = [0.0, 0.0, 0.0, 0.0]


numEpisodes = 0;

best_solution = [0, 0, 0, 2.0, 0.0]

first_time = True

while ( (numEpisodes < 20) or (resource < resource_usage_obj
                               and accuracy >= accuracy_obj) ):

    num_model_path = str(num_model) + '/'
    model_path = os.path.join(path, num_model_path)

    if (not os.path.isdir(model_path)):
        os.makedirs(model_path)

    model = create_model()

    R = randint(0, 9)
    X = randint(10, 18)
    Y = randint(1, X)

    precision = change_precision(X,Y)
    config = hls4ml.utils.config_from_keras_model(model, granularity='model', default_precision=precision)


    config['Model']['ReuseFactor'] =  factor[R]
    print(config)

    print("DATA size: ")
    print(precision)

    hls_model_path = os.path.join(model_path, 'hls4ml_prj/')
    if (not os.path.isdir(model_path)):
        os.makedirs(hls_model_path)

    hls_model = hls4ml.converters.convert_from_keras_model(model, hls_config=config,
                                                           output_dir=hls_model_path,
                                                           fpga_part='xc7z007sclg225-1')
    hls_model.compile()

    dest = shutil.copy(source_test_cpp, destination_test_cpp)
    copy_tree(source_tb_data, destination_tb_data)

    hls_model.build(csim=False, synth=True)
    dic_usage, AverageLatency = get_resource_usage(path_csynth, dic_usage)
    resource = max(dic_usage)

    resource_usage = [X, Y, dic_usage[0], dic_usage[1], dic_usage[2], dic_usage[3], AverageLatency, factor[R]]
    print(resource_usage)
    dic_all.append(resource_usage)

    K.clear_session()

    if (resource < resource_usage_obj):

        model = create_model()
        adam = Adam(lr=0.0001)
        model.compile(optimizer=adam, loss=keras.losses.categorical_crossentropy, metrics=['accuracy'])
        callbacks = all_callbacks(stop_patience = 1000,
                                  lr_factor = 0.5,
                                  lr_patience = 10,
                                  lr_epsilon = 0.000001,
                                  lr_cooldown = 2,
                                  lr_minimum = 0.0000001,
                                  outputDir = model_path)
        model.fit(X_train, Y_train, batch_size=1024,
                  epochs=30, validation_split=0.25, shuffle=True, callbacks = callbacks.callbacks)


        precision = change_precision(X,Y)
        config = hls4ml.utils.config_from_keras_model(model, granularity='model', default_precision=precision)
        config['Model']['ReuseFactor'] = factor[R]

        hls_model = hls4ml.converters.convert_from_keras_model(model, hls_config=config,
                                                               output_dir=hls_model_path,
                                                               fpga_part='xc7z007sclg225-1')
        hls_model.compile()
        dest = shutil.copy(source_test_cpp, destination_test_cpp)


        z = np.argmax(hls_model.predict(X_test), axis=1)
        accuracy = accuracy_score(Y_test, z)
        print("{}".format(accuracy))

        #hls_model.build(csim=True, synth=False)
        #get_accuracy_csim(csim_log_path)

        data = [accuracy, X, Y, dic_usage[0], dic_usage[1], dic_usage[2], dic_usage[3], AverageLatency, factor[R]]
        dic_tested.append(data)
        #print(dic_tested)

        if first_time:
            w = np.argmax(model.predict(X_test), axis=1)
            accuracy_obj = accuracy_score(Y_test, w)
            print("{}".format(accuracy_obj))
            first_time = False;

        if(resource < best_solution[3]  and accuracy > best_solution[4]):
            best_solution[0] = X
            best_solution[1] = Y
            best_solution[2] = factor[R]
            best_solution[3] = resource
            best_solution[4] = accuracy
            df_best = pd.DataFrame(np.array(best_solution).reshape(1,5), columns=['X', 'Y', 'Reuse', 'Resource', 'Accuracy'])
            df_best = pd.DataFrame(columns=['X', 'Y', 'Reuse', 'Resource', 'Accuracy'])

    numEpisodes += 1
    K.clear_session()

print(dic_tested)
print(dic_all)

np.savetxt('model_multistart/dic_all.csv', dic_all, delimiter=',', fmt='%d, %d, %.2f, %.2f, %.2f, %.2f, %d, %d')
if(len(dic_tested) > 0):
    np.savetxt('model_multistart/dic_tested.csv', dic_tested, delimiter=',', fmt='%.2f, %d, %d, %.2f, %.2f, %.2f,%.2f,%d, %d')