#!/bin/bash
# usage after generating a new project with `bazel run :android_studio_poet`
# ./update_graphs $SUBDIRECTORY

set -euo pipefail

readonly project_name=$1; shift
pushd $project_name

echo "Copying benchmarking scripts from third_party..]"
cp ../third_party/benchmark.sh .
cp ../third_party/gradle-profiler .
cp ../third_party/performance.scenarios .

echo "Scripts copied, please edit performance.scenarios file paths accordingly]"

echo "performing Bazel query..]"
if [[ $project_name =~ 'java_only' ]]; then
  bazel query 'deps(//module0)' --output=graph --noimplicit_deps > bazel_graph.dot
else
  bazel query 'deps(//androidAppModule0)' --output=graph --noimplicit_deps > bazel_graph.dot
fi

echo "creating Bazel graph..]"
dot -v -Tpng bazel_graph.dot -o bazel_graph.png

echo "creating Gradle graph..]"
dot -v -Tpng dependencies.dot -o gradle_graph.png
popd
