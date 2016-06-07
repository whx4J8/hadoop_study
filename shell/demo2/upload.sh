#!/usr/bin/env bash

echo "upload file"
scp ../../data/testdata.manual.2009.06.14.csv hadoop@master:~/data/testdata.manual.2009.06.14.csv

echo "upload appendFile.sh"
scp ./appendFile.sh hadoop@master:~/deploy

echo "change authrity"
ssh hadoop@master "chmod 777 ~/deploy/appendFile.sh"

echo "start appendFile.sh"
ssh hadoop@master "~/deploy/appendFile.sh"
