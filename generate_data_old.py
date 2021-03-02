# -*- coding: utf-8 -*-
"""
Created on Tue Jun  9 16:34:15 2020

@author: fmlin
"""


from sklearn.utils import shuffle
from main import pre_data
import tensorflow as tf

import model
from model import LeNet

X_train,y_train,X_validation,y_validation,X_test,y_test = pre_data.pre_data()


import os
import numpy as np
filename = "test_img"
dir_name='testdata/'
for i in range(0, 100):
    filename2 = filename + str(i)
    a_file = open(os.path.join(dir_name, filename2 + ".txt"), "w")
    for row in X_test[i]:
        np.savetxt(a_file, row, '%1.9f')
    a_file.close()
    
import os
import numpy as np
filename = "test_result"
dir_name='testresult/'

#for i in range(0, 100):    
a_file = open(os.path.join(dir_name, filename + ".txt"), "w")
#result_val = y_test[i]
np.savetxt(a_file, y_test[0:99], '%d')
a_file.close()
    
        