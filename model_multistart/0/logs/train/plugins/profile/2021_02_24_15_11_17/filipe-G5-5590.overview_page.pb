�	N��oDoS@N��oDoS@!N��oDoS@	I%�P�0�?I%�P�0�?!I%�P�0�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$N��oDoS@b����k�?AU�W�[S@Y��x>�?*	�rh��LZ@2U
Iterator::Model::ParallelMapV2e73��p�?!��[Q�8@)e73��p�?1��[Q�8@:Preprocessing2F
Iterator::Model*��ѫ�?!���^r�G@)��Z��?1���a�7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatd����t�?!�N�⸳6@)��z�?1O�}�3@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice����%Ǎ?!ky�^�+@)����%Ǎ?1ky�^�+@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate��M��?!Ɍ�S�26@)�<֌�?1&���"� @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip�up�71�?!;=*��+J@)6\�-�w?1Q(�G@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor31]��o?!��l2��@)31]��o?1��l2��@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap78����?!�n�8@)RC��`?1��X���?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9I%�P�0�?I��+���X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	b����k�?b����k�?!b����k�?      ��!       "      ��!       *      ��!       2	U�W�[S@U�W�[S@!U�W�[S@:      ��!       B      ��!       J	��x>�?��x>�?!��x>�?R      ��!       Z	��x>�?��x>�?!��x>�?b      ��!       JCPU_ONLYYI%�P�0�?b q��+���X@Y      Y@ql�]�x�?"�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.b
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