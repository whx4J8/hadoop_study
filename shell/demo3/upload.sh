#!/usr/bin/env bash
# upload.sh file1 file2
echo "upload data"
for i in $*
    do
        scp ../../data/$i hadoop@master:~/data/$i
    done

echo "put file to hdfs"
for i in $*
    do
        ssh hadoop@master "~/hadoop/bin/hdfs dfs -put ~/data/"$i" /sort_data/"$i
    done

echo "list hdfs file"
ssh hadoop@master "~/hadoop/bin/hdfs dfs -ls /sort_data"
