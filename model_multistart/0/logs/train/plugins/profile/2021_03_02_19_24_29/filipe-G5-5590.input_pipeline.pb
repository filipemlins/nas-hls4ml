	��X��M@��X��M@!��X��M@	�@M���?�@M���?!�@M���?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$��X��M@�'c|���?AF�T�=M@Y�G��5\�?*	��ʡV@2U
Iterator::Model::ParallelMapV2�K7�A`�?!�%���7@)�K7�A`�?1�%���7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatqs* ��?!v �&�W;@)�7��w�?1J��B�6@:Preprocessing2F
Iterator::Modell��3�I�?!����'FD@)#���f�?1,فe��0@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceq:Ɇ?!�����B)@)q:Ɇ?1�����B)@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenater���	�?!+���x8@)Ҧ��\�?1x�<��'@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipB��=Ъ?!q O>عM@)�Ϲ���t?1��j@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorx�1!�r?!�����@)x�1!�r?1�����@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap������?!�NC;YV:@)���=�Z?1�9rE���?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9�@M���?I�,���X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�'c|���?�'c|���?!�'c|���?      ��!       "      ��!       *      ��!       2	F�T�=M@F�T�=M@!F�T�=M@:      ��!       B      ��!       J	�G��5\�?�G��5\�?!�G��5\�?R      ��!       Z	�G��5\�?�G��5\�?!�G��5\�?b      ��!       JCPU_ONLYY�@M���?b q�,���X@