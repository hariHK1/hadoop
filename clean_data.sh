docker rm -f nodemanager
docker rm -f resourcemanager
docker rm -f namenode
docker rm -f datanode
docker rm -f datanode1
docker rm -f historyserver
docker rm -f spark-worker-1
docker rm -f spark-master
docker volume rm docker-hadoop-v3_hadoop_namenode
docker volume rm docker-hadoop-v3_hadoop_datanode
docker volume rm docker-hadoop-v3_hadoop_datanode1
docker volume rm docker-hadoop-v3_hadoop_historyserver
docker volume rm docker-hadoop_hadoop_namenode
docker volume rm docker-hadoop_hadoop_datanode1
docker volume rm docker-hadoop_hadoop_historyserver

docker ps --all && docker volume ls