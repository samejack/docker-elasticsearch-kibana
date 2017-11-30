***********************************
docker-elasticsearch-kibana
***********************************

.. image:: https://img.shields.io/badge/license-APACHE-blue.svg
   :target: http://www.apache.org/licenses/LICENSE-2.0

.. image:: https://travis-ci.org/samejack/point-core.svg?branch=master
   :target: https://travis-ci.org/samejack/docker-elasticsearch-kibana

.. image:: https://img.shields.io/docker/build/samejack/elasticsearch-kibana.svg
   :target: https://hub.docker.com/r/samejack/elasticsearch-kibana/


Overview
-----------------------------------

Docker image of Elastic Search + Kibana + IK Plugin + Dictionary Plus for Chinese based-on Ubuntu 14.04.

Getting and Start
=================
.. code-block:: bash

    sudo sysctl -w vm.max_map_count=262144
    sudo docker pull samejack/elasticsearch-kibana:latest
    sudo docker run -p 5601:5601 -p 9200:9200 -it samejack/elasticsearch-kibana:latest


Building from Source Code (Dockerfile)
======================================
.. code-block:: bash

    git clone https://github.com/samejack/docker-elasticsearch-kibana
    cd docker-elasticsearch-kibana
    sudo docker build -t samejack/elasticsearch-kibana ./
