	(,񀲩L@(,񀲩L@!(,񀲩L@	8����?8����?!8����?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$(,񀲩L@���N�?A�6�[�L@Y��3��?*	�C�l�3T@2U
Iterator::Model::ParallelMapV2��.4�i�?!�P�.�8@)��.4�i�?1�P�.�8@:Preprocessing2F
Iterator::Model�aQ��?!5��SοG@)�[�nK�?1y�!�n�6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat}�R��c�?!'�B���8@)�bFx{�?1�+R�3@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice	3m��J�?!�؏�KP'@)	3m��J�?1�؏�KP'@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate��^a���?!�*i�x�4@)����oa}?1�|B��!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipN�����?!�d%�1@J@)��	��p?1�	.��Z@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor��~��@o?!�lZ�1�@)��~��@o?1�lZ�1�@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapݙ	�s�?!��*7@)��V%�}`?1�8���@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no99����?I@���X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	���N�?���N�?!���N�?      ��!       "      ��!       *      ��!       2	�6�[�L@�6�[�L@!�6�[�L@:      ��!       B      ��!       J	��3��?��3��?!��3��?R      ��!       Z	��3��?��3��?!��3��?b      ��!       JCPU_ONLYY9����?b q@���X@