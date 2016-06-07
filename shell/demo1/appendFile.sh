#!/usr/bin/env bash

echo "append file to hdfs"
~/hadoop/bin/hdfs dfs -appendToFile ~/data/file1 /input
~/hadoop/bin/hdfs dfs -appendToFile ~/data/file0 /input

echo "list the last upload file"
~/hadoop/bin/hdfs dfs -ls /input
