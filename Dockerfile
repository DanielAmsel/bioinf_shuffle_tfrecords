FROM ubuntu:18.04
RUN apt-get update && apt-get -y install build-essential  libblas-dev libatlas-base-dev libxml2-dev libxslt1-dev zlib1g-dev libssl-dev libffi-dev python python-dev python-pip wget
RUN apt-get install libsnappy-dev
RUN pip install apache-beam python-snappy
RUN wget https://raw.githubusercontent.com/google/deepvariant/r0.9/tools/shuffle_tfrecords_beam.py
