	���5��a@���5��a@!���5��a@	��$�*j�?��$�*j�?!��$�*j�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$���5��a@�8�Z�?AP��0{�a@Y3�,%�I�?*	�(\�¥[@2U
Iterator::Model::ParallelMapV2��(��P�?!����w,@@)��(��P�?1����w,@@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatQ0c
֘?!�C!t�5@)�ʃ�9�?1�@�F��1@:Preprocessing2F
Iterator::ModelKVE�ɨ�?!q���G@)g�8毐?1�+ִ�x-@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::Concatenate���eۙ?!�e�>�6@)�%ǝ���?1D��r��'@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::Concatenate[0]::TensorSliceo��;��?!e5��	&@)o��;��?1e5��	&@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip�(B�v��?!�}��buJ@)+N�f�}?1����D*@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor���sr?!��)_K@)���sr?1��)_K@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap���뉮�?!}7ц�q8@)�,�?2]?1�]���?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9��$�*j�?If��r�X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�8�Z�?�8�Z�?!�8�Z�?      ��!       "      ��!       *      ��!       2	P��0{�a@P��0{�a@!P��0{�a@:      ��!       B      ��!       J	3�,%�I�?3�,%�I�?!3�,%�I�?R      ��!       Z	3�,%�I�?3�,%�I�?!3�,%�I�?b      ��!       JCPU_ONLYY��$�*j�?b qf��r�X@