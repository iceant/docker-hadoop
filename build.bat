docker build --rm -t bde2020/hadoop-base:2.0.0-hadoop3.3.1-java8 ./base
docker build --rm -t bde2020/hadoop-namenode:2.0.0-hadoop3.3.1-java8 ./namenode
docker build --rm -t bde2020/hadoop-datanode:2.0.0-hadoop3.3.1-java8 ./datanode
docker build --rm -t bde2020/hadoop-resourcemanager:2.0.0-hadoop3.3.1-java8 ./resourcemanager
docker build --rm -t bde2020/hadoop-nodemanager:2.0.0-hadoop3.3.1-java8 ./nodemanager
docker build --rm -t bde2020/hadoop-historyserver:2.0.0-hadoop3.3.1-java8 ./historyserver
docker build --rm -t bde2020/hadoop-submit:2.0.0-hadoop3.3.1-java8 ./submit
docker build --rm -t bde2020/hadoop-nginx:2.0.0-hadoop3.3.1-java8 ./nginx