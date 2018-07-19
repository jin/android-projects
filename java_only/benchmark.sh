#!/bin/bash
# From https://github.com/sunyal/gradle-profiler

if [ -z "$ANDROID_HOME" ]
then
  echo "ANDROID_HOME needs to be set"
  exit;
fi
if ! [ -x "$(command -v bazel)" ]; then
  echo 'Error: bazel is not installed.' >&2
  exit 1
fi

version=$1; shift;

targets="cleanWithColdLocalCacheWithDaemon"
timestampDir=$(date +"%Y%m%d_%H%M%S")
outputDir=output/$timestampDir-$version
iterations=5
warmups=2

echo "Exporting benchmark data to $outputDir"

echo "Snapshotting performance.scenarios to $outputDir"
mkdir -p $outputDir/
cp performance.scenarios $outputDir/

# ./gradle-profiler --benchmark $targets --iterations=$iterations --warmups=$warmups --output-dir=$outputDir/gradle
./gradle-profiler --benchmark --bazel $targets --iterations=$iterations --warmups=$warmups --output-dir=$outputDir/bazel
