	���K�P@���K�P@!���K�P@	!x�^���?!x�^���?!!x�^���?"e
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails$���K�P@*�~��?A���D�P@Y\�	��b�?*	w��/}]@2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateB�p�-�?!B���OB@)V]��?1�R���5@:Preprocessing2U
Iterator::Model::ParallelMapV2�x��M�?!G4�-k�4@)�x��M�?1G4�-k�4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat�>�Q�y�?!���8F5@)����K�?1#�u���0@:Preprocessing2�
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice.�s`9�?!��J��,.@).�s`9�?1��J��,.@:Preprocessing2F
Iterator::Modelܸ���Ф?!�k��;A@)��Cl��?1G�O�+@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip����ɳ?!��4bP@)���:8�{?1�"[^{@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor�����t?!4��&@)�����t?14��&@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap�M�g\�?!�k���VC@)�j+���c?1�X5/br @:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
device�Your program is NOT input-bound because only 0.1% of the total step time sampled is waiting for input. Therefore, you should focus on reducing other time.no*no9"x�^���?I�O����X@Zno#You may skip the rest of this page.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	*�~��?*�~��?!*�~��?      ��!       "      ��!       *      ��!       2	���D�P@���D�P@!���D�P@:      ��!       B      ��!       J	\�	��b�?\�	��b�?!\�	��b�?R      ��!       Z	\�	��b�?\�	��b�?!\�	��b�?b      ��!       JCPU_ONLYY"x�^���?b q�O����X@