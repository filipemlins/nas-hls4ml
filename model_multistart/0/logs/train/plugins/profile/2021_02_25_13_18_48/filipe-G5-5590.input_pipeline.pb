	$���P@$���P@!$���P@	��u����?��u����?!��u����?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$$���P@�V����?A�C6�.�P@Yi��>�Q�?*	Y9��v�Y@2U
Iterator::Model::ParallelMapV2 <�.�?!R�<�7@) <�.�?1R�<�7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat��Y�N�?!R`|�i:@)ۤ���w�?1��ҷ�-5@:Preprocessing2F
Iterator::Model���[��?!?�/�GE@)��,���?1,�D:�2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenatepB!��?!mm�H�9@)Ӿ��z�?1�!Ƞe�*@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceѱ�J\ǈ?!޸b�^['@)ѱ�J\ǈ?1޸b�^['@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor���
a5v?!!��*%�@)���
a5v?1!��*%�@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipoc�#�w�?!���D�L@)�$��p?1�����@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapd�CԷ�?!�щ��;@)�7�0�`?1+BF�g��?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9�u����?I�b��A�X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	�V����?�V����?!�V����?      ��!       "      ��!       *      ��!       2	�C6�.�P@�C6�.�P@!�C6�.�P@:      ��!       B      ��!       J	i��>�Q�?i��>�Q�?!i��>�Q�?R      ��!       Z	i��>�Q�?i��>�Q�?!i��>�Q�?b      ��!       JCPU_ONLYY�u����?b q�b��A�X@