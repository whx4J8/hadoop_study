#!/usr/bin/env bash

echo "append file to hdfs"
~/hadoop/bin/hdfs dfs -put ~/data/testdata.manual.2009.06.14.csv /input1/file1
~/hadoop/bin/hdfs dfs -put ~/data/file0 /input1/file0

echo "list the last upload file"
~/hadoop/bin/hdfs dfs -ls /input1