	��8�~�M@��8�~�M@!��8�~�M@	S�6Ǵ�?S�6Ǵ�?!S�6Ǵ�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$��8�~�M@�"rl�?AB��ފ�M@Y�s���z�?*	"��~j�R@2F
Iterator::Model�"nN%�?!Iޠ�I@)�b��V�?1����;@:Preprocessing2U
Iterator::Model::ParallelMapV2|�5Z��?!��(7R=6@)|�5Z��?1��(7R=6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat�9�����?!Ǌ��C�8@)y�Z��K�?1�k�=73@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice;�O��n�?!�o\@�-(@);�O��n�?1�o\@�-(@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatet��gy�?!{��?�q2@)r���_s?1�?~Bj@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor3���/p?!�ʇ�<@)3���/p?1�ʇ�<@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip�3��7��?!�!_m�H@)ݲC�Ön?1� �3;@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap&n�@׎?!zp5a�:4@)�T�:�U?1�owR��?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9S�6Ǵ�?I�K2��X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�"rl�?�"rl�?!�"rl�?      ��!       "      ��!       *      ��!       2	B��ފ�M@B��ފ�M@!B��ފ�M@:      ��!       B      ��!       J	�s���z�?�s���z�?!�s���z�?R      ��!       Z	�s���z�?�s���z�?!�s���z�?b      ��!       JCPU_ONLYYS�6Ǵ�?b q�K2��X@