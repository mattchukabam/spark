#!/usr/bin/env bash

#VERSION=1.1
#
#export MAVEN_OPTS="-Xmx2g -XX:MaxPermSize=512M -XX:ReservedCodeCacheSize=512m"
##BUILD_COMMAND="mvn clean package -DskipTests $@"
#BUILD_COMMAND="mvn package -DskipTests $@"
#${BUILD_COMMAND}
#
#MAKE_TGZ=true
#if [ "$MAKE_TGZ" == "true" ]; then
#  TARDIR_NAME=spark-$VERSION-bin-$NAME
#  TARDIR="$FWDIR/$TARDIR_NAME"
#  rm -rf "$TARDIR"
#  cp -r "$DISTDIR" "$TARDIR"
#  tar czf "spark-$VERSION-bin-$NAME.tgz" -C "$FWDIR" "$TARDIR_NAME"
#  rm -rf "$TARDIR"
#fi

#export SPARK_HADOOP_VERSION=hadoop2.4
#./make-distribution.sh --skip-java-test --tgz -Phadoop-2.4 -Phadoop.version=2.4.1 -Phive

# include the datanucleus jars
export SPARK_HIVE=true
./make-distribution.sh --skip-java-test --tgz --name hadoop-2.4 -Phadoop-2.4 -Phive -Pyarn -Pkinesis-asl
