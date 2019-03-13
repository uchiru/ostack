FROM ubuntu:16.04

RUN echo "empty"
RUN apt update && \
    apt install -y git vim screen curl \
                  libxml2-dev libxslt1-dev \
                  python-pip python-dev \
                  python-openssl \
                  python-pyasn1 \
                  python-keystoneclient \
                  python-novaclient \
                  python-glanceclient \
                  python-neutronclient

RUN pip install --upgrade pip
RUN pip install ndg-httpsclient && \
  pip install --upgrade pbr && \
  pip install --upgrade cliff && \
  pip install git+https://github.com/openstack/python-cinderclient \
              git+https://github.com/openstack/python-heatclient \
              git+https://github.com/openstack/python-openstackclient
