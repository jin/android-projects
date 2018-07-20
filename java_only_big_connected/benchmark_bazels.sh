#!/bin/bash
set -euo pipefail

versions="bazel-0.10.1-darwin-x86_64 bazel-0.11.1-darwin-x86_64 bazel-0.12.0-darwin-x86_64 bazel-0.13.1-darwin-x86_64 bazel-0.14.1-darwin-x86_64 bazel-0.15.1-darwin-x86_64 bazel-0.15.2-darwin-x86_64 bazel-0.16.0rc1-darwin-x86_64"
bazels_dir="/opt/bazel"

for version in $versions; do 
  rm "$bazels_dir/bazel"
  ln -s "$bazels_dir/$version" "$bazels_dir/bazel"
  sed "s/%version%/$version/" performance.scenarios.tpl > performance.scenarios
  ./benchmark.sh $version
  "$bazels_dir/bazel" clean --expunge
done
