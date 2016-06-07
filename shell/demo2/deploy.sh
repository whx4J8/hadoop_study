#!/usr/bin/env bash

echo "deploy jar"
scp ../../target/hadoop-study-1.0-SNAPSHOT.jar hadoop@master:~/deploy

echo "run hadoop task"
ssh hadoop@master "~/hadoop/bin/hadoop jar ~/deploy/hadoop-study-1.0-SNAPSHOT.jar demo2.ParseTwitterData /input1 /output1"


#echo "rm run.sh"
#ssh hadoop@master "rm -rf ~/deploy/run.sh"
#echo "deploy run.sh"
#scp ./run.sh hadoop@master:/~deploy
#echo "change authority"
#ssh hadoop@master "chmod 755 ~/deploy/run.sh"
#echo "start run.sh"
#ssh hadoop@master "~/deploy/run.sh"