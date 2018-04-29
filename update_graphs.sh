#!/bin/bash
# usage after generating a new project with `bazel run :android_studio_poet`
# ./update_graphs $SUBDIRECTORY

pushd $1; shift
bazel query 'deps(//androidAppModule0)' --output=graph --noimplicit_deps > bazel_graph.dot && dot -Tpng bazel_graph.dot -o bazel_graph.png &&  dot -Tpng dependencies.dot -o gradle_graph.png
popd
