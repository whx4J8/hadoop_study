#!/usr/bin/env bash

echo "upload data"
scp ../../data/file0 hadoop@master:~/data/file0
scp ../../data/file1 hadoop@master:~/data/file1

echo "upload appendFile.sh "
scp ./appendFile.sh hadoop@master:~/deploy

echo "change authority"
ssh hadoop@master "chmod 777 ~/deploy/appendFile.sh"

echo "start appendFile.sh"
ssh hadoop@master "~/deploy/appendFile.sh"
