#!/usr/bin/env bash

echo "deploy jar"
scp ../../target/hadoop-study-1.0-SNAPSHOT.jar hadoop@master:~/deploy
echo "deploy run.sh"
scp ./run.sh hadoop@master:~/deploy
echo "change authority"
ssh hadoop@master "chmod 755 ~/deploy/run.sh"
echo "start run.sh"
ssh hadoop@master "~/deploy/run.sh"