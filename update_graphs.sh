#!/bin/bash
# usage after generating a new project with `bazel run :android_studio_poet`
# ./update_graphs $SUBDIRECTORY

set -euo pipefail

pushd $1; shift
echo "Querying]"
bazel query 'deps(//androidAppModule0)' --output=graph --noimplicit_deps > bazel_graph.dot

echo "creating Bazel graph]"
dot -v -Tpng bazel_graph.dot -o bazel_graph.png

echo "creating Gradle graph]"
dot -v -Tpng dependencies.dot -o gradle_graph.png
popd
