# Dockerfile for bstriner/tensorflow-cuda-10.0-cudnn7-devel-ubuntu16.04:tf-nightly

FROM bstriner/cuda-10.0-cudnn7-devel-ubuntu16.04
# docker build . -t bstriner/tensorflow-cuda-10.0-cudnn7-devel-ubuntu16.04:tf-nightly
# docker login
# docker push bstriner/tensorflow-cuda-10.0-cudnn7-devel-ubuntu16.04:tf-nightly
# docker run -it bstriner/tensorflow-cuda-10.0-cudnn7-devel-ubuntu16.04:tf-nightly

#TF
RUN python3 -m pip install keras_preprocessing keras_applications tf-nightly-gpu tfp-nightly pysoundfile cffi
RUN python3 -m pip install kaldiio imageio scipy matplotlib
RUN python3 -m pip install tensorflow-gan
RUN python3 -m pip install sentencepiece
RUN python3 -c "import tensorflow as tf; print(tf.__version__)"
#tf-estimator-nightly tb-nightly 
