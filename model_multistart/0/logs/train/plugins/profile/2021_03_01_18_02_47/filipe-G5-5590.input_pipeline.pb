	+��p��S@+��p��S@!+��p��S@	����C�?����C�?!����C�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$+��p��S@	O��'�?Aj��{�S@Yx��r�?*	X9��~[@2F
Iterator::Model���FtϪ?!$��oQ�G@)=�Ƃ �?17�`�zk9@:Preprocessing2U
Iterator::Model::ParallelMapV2�,&��?!^��'16@)�,&��?1^��'16@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat�tw���?!��QI5@)�6qr��?1��p��1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate� ��	�?!�1Mh�8@)X���!�?1<ӟ�0@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice��L�σ?!`�Z͕�!@)��L�σ?1`�Z͕�!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip�#c���?!�X`��1J@)0�[w�t?1j��/l�@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor�B�l�p?!���\0@)�B�l�p?1���\0@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapƆn�ʝ?!���Nps:@)1�߄B\?1�Ω����?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9����C�?I�� /:�X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
		O��'�?	O��'�?!	O��'�?      ��!       "      ��!       *      ��!       2	j��{�S@j��{�S@!j��{�S@:      ��!       B      ��!       J	x��r�?x��r�?!x��r�?R      ��!       Z	x��r�?x��r�?!x��r�?b      ��!       JCPU_ONLYY����C�?b q�� /:�X@