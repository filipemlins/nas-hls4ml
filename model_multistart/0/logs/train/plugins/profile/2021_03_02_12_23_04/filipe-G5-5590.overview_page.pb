�	�/J�_�L@�/J�_�L@!�/J�_�L@	�l23�8�?�l23�8�?!�l23�8�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$�/J�_�L@K�b�¶?A.:Yj�qL@Y����/��?*	��Q�mZ@2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate� l@��?!p %n��>@)Hm��~�?1�Ci�5@:Preprocessing2U
Iterator::Model::ParallelMapV2N&n�@�?!�d�^�{5@)N&n�@�?1�d�^�{5@:Preprocessing2F
Iterator::Model��(�N�?!w�MT�D@)�)�:]�?1#HJ��3@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat��B��?!|��6@)`cD�В?1�;"��a1@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicef�(�7�?!0�w�d�!@)f�(�7�?10�w�d�!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip�w�Я?!�)���cM@)���h�xt?1|2��@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor^�?��wt?!�G)3��@)^�?��wt?1�G)3��@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap��e�I�?!����R�?@)ޏ�/��X?1�a����?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9�l23�8�?I�ff���X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	K�b�¶?K�b�¶?!K�b�¶?      ��!       "      ��!       *      ��!       2	.:Yj�qL@.:Yj�qL@!.:Yj�qL@:      ��!       B      ��!       J	����/��?����/��?!����/��?R      ��!       Z	����/��?����/��?!����/��?b      ��!       JCPU_ONLYY�l23�8�?b q�ff���X@Y      Y@qZ�����?"�
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