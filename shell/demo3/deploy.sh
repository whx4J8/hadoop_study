#!/usr/bin/env bash

echo "deploy jar"
scp ../../target/hadoop-study-1.0-SNAPSHOT.jar hadoop@master:~/deploy

echo "run hadoop task"
ssh hadoop@master "~/hadoop/bin/hadoop jar ~/deploy/hadoop-study-1.0-SNAPSHOT.jar demo3.SortData /sort_data /sort_data_out"
