
from tensorflow.keras.utils import to_categorical
from sklearn.model_selection import train_test_split
import numpy as np
import pandas as pd

import os 
  
##pre processing
train = pd.read_csv('train.csv')
test = pd.read_csv('test.csv')

Y_train1 = train[['label']]
X_train1 = train.drop(train.columns[[0]], axis=1)
X_test1 = test


X_train1 = np.array(X_train1)
X_test1 = np.array(X_test1)

#Reshape the training and test set
X_train1 = X_train1.reshape(X_train1.shape[0], 28, 28, 1)/255.0
X_test1 = X_test1.reshape(X_test1.shape[0], 28, 28, 1)/255.0

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


# Directory 
directory = "tb_data"
# Parent Directory path 
parent_dir = "./"  
# Path
 
path = os.path.join(parent_dir, directory) 
  
# Create the directory \n
if(not os.path.exists(path)):
    os.mkdir(path) 
print("Directory '% s' created" % directory) 

directory_test_input = "test_input"
path_test_img = os.path.join(path, directory_test_input) 

if(not os.path.exists(path_test_img)):
    os.mkdir(path_test_img)

print("Directory '% s' created" % directory_test_input) 

for i in range (0, X_test.shape[0]):
    filename = "test_img" + str(i) +".dat"
    file= os.path.join(path_test_img, filename)  
    with open(file, 'w') as filetowrite:
        img = X_test[i].reshape(32,32)
        np.savetxt(file, img, fmt='%.8f', newline=' ')


filename = "filenames.dat"
file= os.path.join(path, filename)  
content_filename = "test_img"
with open(file, 'w') as filetowrite:
    for i in range(0, X_test.shape[0]):
        filetowrite.write(content_filename + str(i) + ".dat\n")


filename = "tb_output_predictions.dat"
file= os.path.join(path, filename)
np.savetxt(file, Y_test.values, fmt='%d')





