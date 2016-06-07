#!/usr/bin/env bash

# mvn install
echo "deploy jar"
scp ../../target/hadoop-study-1.0-SNAPSHOT.jar hadoop@master:~/deploy

echo "run hadoop hdfs"
ssh hadoop@master "~/hadoop/bin/hadoop URLCat hdfs://localhost/"
