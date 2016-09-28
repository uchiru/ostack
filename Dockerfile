FROM ubuntu:14.04
RUN apt-get update && \
  apt-get install curl python-pip python-dev git libxml2-dev libxslt1-dev python-openssl python-pyasn1 python-keystoneclient python-novaclient python-glanceclient python-neutronclient -y && \
  pip install ndg-httpsclient && \
  pip install --upgrade pbr && \
  pip install --upgrade cliff && \
  pip install git+https://github.com/openstack/python-cinderclient && \
  pip install git+https://github.com/openstack/python-heatclient && \
  pip install git+https://github.com/openstack/python-openstackclient
