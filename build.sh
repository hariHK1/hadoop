#!/bin/bash
# BASE
docker build -t hamalrsy/hadoop-base:3.3.4-java8 base/.

# Hadoop Cluster
docker build -t hamalrsy/hadoop-namenode:3.3.4-java8 namenode/.
docker build -t hamalrsy/hadoop-datanode:3.3.4-java8 datanode/.

docker build -t hamalrsy/hadoop-resourcemanager:3.3.4-java8 resourcemanager/.
docker build -t hamalrsy/hadoop-nodemanager:3.3.4-java8 nodemanager/.

docker build -t hamalrsy/hadoop-historyserver:3.3.4-java8 historyserver/.

# Hadoop Submit MapReduce Job
docker build -t hamalrsy/hadoop-submit:3.3.4-java8 submit/.
# How To Run Using docker-compose

# Migrate Data From SQL To Hadoop (Deprecated!!)
#docker build -t hamalrsy/hadoop-sqoop:3.3.4-java8 sqoop/.
# USINGCOMPOSEEE docker run -it --rm --name sqoop hamalrsy/hadoop-sqoop:3.3.4-java8 

#docker build -t hamalrsy/hadoop-flume:3.3.4-java8 flume/.
# USINGCOMPOSEEE docker run -it --rm --name flume --network development --hostname flume -e SERVICE_PRECONDITION="117.53.45.158:9000 117.53.45.158:9870 117.53.45.158:9864 117.53.45.158:8088" --env-file ./hadoop.env hamalrsy/hadoop-flume:3.3.4-java8 bash
# flume-ng agent --conf conf --conf-file /opt/flume/conf/flume.conf --name agent -Dflume.root.logger=INFO,console


#docker build -t hamalrsy/hadoop-zookeeper:3.3.4-java8 zookeeper/.
# USINGCOMPOSEEE docker run -it --rm --name zookeeper hamalrsy/hadoop-zookeeper:3.3.4-java8 


docker build -t hamalrsy/hadoop-spark-master:3.3.4-java8 spark-master/.
docker build -t hamalrsy/hadoop-spark-worker:3.3.4-java8 spark-worker/.
