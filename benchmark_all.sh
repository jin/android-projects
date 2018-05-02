#!/bin/bash

set -euo pipefail

projects=$(ls -d */ | grep -v 'third_party')

for project in $projects; do
  if [ -e "$project/benchmark.sh" ]; then
    pushd $project
    ./benchmark.sh
    popd
  fi
done
