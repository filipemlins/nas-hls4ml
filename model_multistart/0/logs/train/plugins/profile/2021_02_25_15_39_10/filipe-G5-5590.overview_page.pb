�	a��L(O@a��L(O@!a��L(O@	�갋��?�갋��?!�갋��?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$a��L(O@S\U�]�?A��"��O@Y1a4+ۇ�?*	{�G��S@2U
Iterator::Model::ParallelMapV2�x\T���?!�!����6@)�x\T���?1�!����6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat��}�Ɠ?!��KQ8@)�k{�%9�?1`�^���3@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicez��L�D�?!�פ�7a1@)z��L�D�?1�פ�7a1@:Preprocessing2F
Iterator::Modelؼ��Z`�?!��C�\JC@)a������?1Z����/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate��� v�?!d���u�;@)p�h����?1��|z$@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip.�v����?!&�	��N@)�@�Ρu?1��dL��@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor>?�ml?!;z�i	z@)>?�ml?1;z�i	z@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap���U-�?!rᝥ}�>@)t|�8c�c?1g�y_=@:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9�갋��?I���F�X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	S\U�]�?S\U�]�?!S\U�]�?      ��!       "      ��!       *      ��!       2	��"��O@��"��O@!��"��O@:      ��!       B      ��!       J	1a4+ۇ�?1a4+ۇ�?!1a4+ۇ�?R      ��!       Z	1a4+ۇ�?1a4+ۇ�?!1a4+ۇ�?b      ��!       JCPU_ONLYY�갋��?b q���F�X@Y      Y@q@J{����?"�
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