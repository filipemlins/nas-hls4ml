	����V@����V@!����V@	��E�+|�?��E�+|�?!��E�+|�?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$����V@>ʈ@��?AQ�v0b�U@YE*�-9�?*	��(\��u@2U
Iterator::Model::ParallelMapV2q��9�?!�H�P�&=@)q��9�?1�H�P�&=@:Preprocessing2F
Iterator::Model%#gaO;�?!ܜ�l�H@)�c"��<�?1��Q��E4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatF����(�?!�^�]�7@)n�l���?1��{s3@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice��`�>�?!U�\�<&@)��`�>�?1U�\�<&@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate�d�`TR�?!��ӋNz5@)���i��?1޶J0߷$@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor^���4�?!���3�@)^���4�?1���3�@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip�>W[���?!$ck�II@)��(����?1
k_�g�@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapߋ/�ㅴ?!��:_0�6@)�qR��8s?1K�l6^�?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.3% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9��E�+|�?I�wԃ�X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	>ʈ@��?>ʈ@��?!>ʈ@��?      ��!       "      ��!       *      ��!       2	Q�v0b�U@Q�v0b�U@!Q�v0b�U@:      ��!       B      ��!       J	E*�-9�?E*�-9�?!E*�-9�?R      ��!       Z	E*�-9�?E*�-9�?!E*�-9�?b      ��!       JCPU_ONLYY��E�+|�?b q�wԃ�X@