�	�N?���L@�N?���L@!�N?���L@	y��I��?y��I��?!y��I��?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$�N?���L@?rk�m��?A�C��ʾL@Y�%U�M�?*	n����T@2U
Iterator::Model::ParallelMapV2��EB[Ε?!�o#k9@)��EB[Ε?1�o#k9@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat����?!d���ڤ9@)��L�n�?1�� �R4@:Preprocessing2F
Iterator::Model����?!4>~�l�D@)�lt�Oq�?1vl����0@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice���:�f�?!�yK��q,@)���:�f�?1�yK��q,@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate��!p�?!�X�|��7@)#�ng_y�?1�7�v 4#@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip���q�?!���� M@)��߼8�u?1�Q	+��@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorj>"�Dr?!N�+\K@)j>"�Dr?1N�+\K@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapq�::�F�?!�:U�[�9@))����h]?1C�M�#@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9y��I��?I]�-|��X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	?rk�m��??rk�m��?!?rk�m��?      ��!       "      ��!       *      ��!       2	�C��ʾL@�C��ʾL@!�C��ʾL@:      ��!       B      ��!       J	�%U�M�?�%U�M�?!�%U�M�?R      ��!       Z	�%U�M�?�%U�M�?!�%U�M�?b      ��!       JCPU_ONLYYy��I��?b q]�-|��X@Y      Y@q�C9�"�?"�
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