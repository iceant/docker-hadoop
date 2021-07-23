set DOCKER_NETWORK=docker-hadoop_default
set ENV_FILE=hadoop.env
set DOCKER_IMAGE_VERSION=2.0.0-hadoop3.3.1-java8
docker build -t hadoop-wordcount ./submit
docker run --network %DOCKER_NETWORK% --env-file %ENV_FILE% bde2020/hadoop-base:%DOCKER_IMAGE_VERSION% hdfs dfs -mkdir -p /input/
docker run --network %DOCKER_NETWORK% --env-file %ENV_FILE% bde2020/hadoop-base:%DOCKER_IMAGE_VERSION% hdfs dfs -copyFromLocal -f /opt/hadoop-3.3.1/README.txt /input/
docker run --network %DOCKER_NETWORK% --env-file %ENV_FILE% hadoop-wordcount
docker run --network %DOCKER_NETWORK% --env-file %ENV_FILE% bde2020/hadoop-base:%DOCKER_IMAGE_VERSION% hdfs dfs -cat /output/*
docker run --network %DOCKER_NETWORK% --env-file %ENV_FILE% bde2020/hadoop-base:%DOCKER_IMAGE_VERSION% hdfs dfs -rm -r /output
docker run --network %DOCKER_NETWORK% --env-file %ENV_FILE% bde2020/hadoop-base:%DOCKER_IMAGE_VERSION% hdfs dfs -rm -r /input