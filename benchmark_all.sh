#!/bin/bash

set -euo pipefail

projects=$(ls -d */ | grep -v 'third_party')

for project in $projects; do
  # Make sure gradle and Bazel are runnable
  pushd $project
  echo "Verifying that Gradle and Bazel are working in $project.."
  ./gradlew >/dev/null
  bazel query //androidAppModule0 >/dev/null
  popd
done

for project in $projects; do
  if [ -e "$project/benchmark.sh" ]; then
    pushd $project
    ./benchmark.sh
    popd
  fi
done
