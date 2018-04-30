#!/bin/bash
# usage after generating a new project with `bazel run :android_studio_poet`
# ./update_graphs $SUBDIRECTORY

set -euo pipefail

pushd $1; shift

echo "Copying benchmarking scripts from third_party..]"
cp ../third_party/benchmark.sh .
cp ../third_party/gradle-profiler .
cp ../third_party/performance.scenarios .

echo "Scripts copied, please edit performance.scenarios file paths accordingly]"

echo "performing Bazel query..]"
bazel query 'deps(//androidAppModule0)' --output=graph --noimplicit_deps > bazel_graph.dot

echo "creating Bazel graph..]"
dot -v -Tpng bazel_graph.dot -o bazel_graph.png

echo "creating Gradle graph..]"
dot -v -Tpng dependencies.dot -o gradle_graph.png
popd
