FROM ubuntu:20.04

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive \
    apt install -y git vim screen curl \
                  libxml2-dev libxslt1-dev \
                  python3-pip python-dev \
                  python3-openssl \
                  python3-pyasn1 \
                  python3-keystoneclient \
                  python3-novaclient \
                  python3-glanceclient \
                  python3-neutronclient

RUN rm -rf /usr/lib/python*/dist-packages/yaml
RUN rm -rf /usr/lib/python*/dist-packages/PyYAML-*

RUN pip3 install --upgrade pip
RUN pip3 install -U pyopenssl
RUN pip3 install --upgrade cryptography
RUN pip3 install ndg-httpsclient && \
  pip3 install --upgrade pbr && \
  pip3 install --upgrade cliff && \
  pip3 install git+https://github.com/openstack/python-cinderclient \
              git+https://github.com/openstack/python-heatclient \
              git+https://github.com/openstack/python-openstackclient
