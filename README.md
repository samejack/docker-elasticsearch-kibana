# docker-elasticsearch-kibana
[![Build Status](https://travis-ci.org/samejack/point-core.svg?branch=master)](https://travis-ci.org/samejack/docker-elasticsearch-kibana)

## Overview
Docker image of Elastic Search + Kibana + IK Plugin + Dictionary Plus for Chinese based-on Ubuntu 14.04

[Docker Cloud](https://hub.docker.com/r/samejack/elasticsearch-kibana/)

## Getting and Start
```
sudo docker pull samejack/docker-elasticsearch-kibana:latest
sudo docker run -p 5601:5601 -p 9200:9200 -it samejack/elasticsearch-kibana:latest
```

## Building from Source Code (Dockerfile)
```
git clone https://github.com/samejack/docker-elasticsearch-kibana
cd docker-elasticsearch-kibana
sudo docker build -t samejack/elasticsearch-kibana ./
```
