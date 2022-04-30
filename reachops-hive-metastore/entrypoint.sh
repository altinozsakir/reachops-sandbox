#!/bin/sh

export HADOOP_HOME=/opt/hadoop-3.2.0
export HADOOP_CLASSPATH=${HADOOP_HOME}/share/hadoop/tools/lib/aws-java-sdk-bundle-1.11.375.jar:${HADOOP_HOME}/share/hadoop/tools/lib/hadoop-aws-3.2.0.jar
export JAVA_HOME=/usr/local/openjdk-8


/bin/bash /init.sh


/opt/apache-hive-metastore/bin/schematool -initSchema -dbType ${METASTORE_DB}
/opt/apache-hive-metastore/bin/start-metastore
