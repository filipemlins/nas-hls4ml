	0����� @0����� @!0����� @	L��ؗ�?L��ؗ�?!L��ؗ�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$0����� @*�#��t�?A��Wu� @Y�K���?*	��n�@U@2U
Iterator::Model::ParallelMapV2�i4��?!\V��5@)�i4��?1\V��5@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatjj�Z_�?!^���Wg7@)q�a���?1�9P?�3@:Preprocessing2F
Iterator::ModelK?��?!�XJ9KD@)�,��;�?1��>��2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateެ���\�?!(��v��;@)�oB@�?1�_�LB`1@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice�P�y�?!G�S�8%@)�P�y�?1G�S�8%@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip��$�۩?!����M@)��L�t?125�wL@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor��E��\j?!�Z&��H@)��E��\j?1�Z&��H@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap��u?T�?!q���?>@)�J=By_?1D_@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.7% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9M��ؗ�?I��tN��X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	*�#��t�?*�#��t�?!*�#��t�?      ��!       "      ��!       *      ��!       2	��Wu� @��Wu� @!��Wu� @:      ��!       B      ��!       J	�K���?�K���?!�K���?R      ��!       Z	�K���?�K���?!�K���?b      ��!       JCPU_ONLYYM��ؗ�?b q��tN��X@