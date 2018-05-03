#!/bin/bash

set -euo pipefail

projects=$(ls -d */ | grep -v 'third_party')

for project in $projects; do
  # Make sure gradle is downloaded first
  pushd $project
  ./gradlew
  popd
done

for project in $projects; do
  if [ -e "$project/benchmark.sh" ]; then
    pushd $project
    ./benchmark.sh
    popd
  fi
done
