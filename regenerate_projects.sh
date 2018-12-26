#!/bin/bash

set -euo pipefail

projects=$(ls -d */ | grep -v 'third_party')

for project in $projects; do
  cp $project/performance.scenarios /tmp/tmp_scenarios
  java -jar third_party/android-studio-poet-all.jar $project/as_poet_config.json
  ./prepare_project.sh $project
  cp /tmp/tmp_scenarios $project/performance.scenarios
done
