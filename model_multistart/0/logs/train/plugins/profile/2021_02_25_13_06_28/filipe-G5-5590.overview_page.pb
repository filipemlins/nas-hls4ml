�	���$Q@���$Q@!���$Q@	��#m��?��#m��?!��#m��?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$���$Q@��A�<��?A6\�-Q@Y:y�	�5�?*	ˡE��W@2U
Iterator::Model::ParallelMapV2���֙?!�Ц�:@)���֙?1�Ц�:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat(�$�ɗ?!�o^o<~8@)��.5B?�?1���ni�3@:Preprocessing2F
Iterator::Model�?�,ե?!�ON��zF@)>ϟ6�ӑ?1���{[2@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice�`��?!=H��v}*@)�`��?1=H��v}*@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate�K�uT�?!ݰ��m�5@)���,��?1�do!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip�����?!,��n
�K@)��|��w?1%!K�F@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor����b)r?!�x�L�@)����b)r?1�x�L�@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap�GG�ŗ?!<(r�/z8@)D� ��c?1���@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9��#m��?Iw�$\�X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	��A�<��?��A�<��?!��A�<��?      ��!       "      ��!       *      ��!       2	6\�-Q@6\�-Q@!6\�-Q@:      ��!       B      ��!       J	:y�	�5�?:y�	�5�?!:y�	�5�?R      ��!       Z	:y�	�5�?:y�	�5�?!:y�	�5�?b      ��!       JCPU_ONLYY��#m��?b qw�$\�X@Y      Y@q�.f�?"�
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