�	(�r�h@(�r�h@!(�r�h@	2��Ꭵ?2��Ꭵ?!2��Ꭵ?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$(�r�h@���쁺?AU��E	�h@Y@Û5x_�?*	a��"�IZ@2U
Iterator::Model::ParallelMapV2�b�0�?!��|o�9@)�b�0�?1��|o�9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat�l��}�?!b�Du:@)f��t牗?1e~9�=�5@:Preprocessing2F
Iterator::Model����v�?!I	��G@)k�MG �?1�w�m\5@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::Concatenate[0]::TensorSlice0��s�?!���I�*@)0��s�?1���I�*@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[1]::ConcatenateN�t"��?!�^�aKF3@)�Pj/��x?1�GP�&@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip��`�?!���RZJ@)6w��\�v?1���o��@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor������s?!⎿�ec@)������s?1⎿�ec@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap�מY��?!p
5@)���O��]?1ʼk1���?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no92��Ꭵ?Il��#N�X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	���쁺?���쁺?!���쁺?      ��!       "      ��!       *      ��!       2	U��E	�h@U��E	�h@!U��E	�h@:      ��!       B      ��!       J	@Û5x_�?@Û5x_�?!@Û5x_�?R      ��!       Z	@Û5x_�?@Û5x_�?!@Û5x_�?b      ��!       JCPU_ONLYY2��Ꭵ?b ql��#N�X@Y      Y@qe��Kz�?"�
device�Your program is NOT input-bound because only 0.0% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"T
Rtensorflow_stats (identify the time-consuming operations executed on the CPU_ONLY)"Z
Xtrace_viewer (look at the activities on the timeline of each CPU_ONLY in the trace view)*�
�<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2M
=type.googleapis.com/tensorflow.profiler.GenericRecommendation
nono2no:
Refer to the TF2 Profiler FAQ2"CPU: B 