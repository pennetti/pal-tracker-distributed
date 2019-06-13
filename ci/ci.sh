#!/usr/bin/env bash

set -e


#./gradlew clean test

./gradlew :applications:backlog-server:assemble
./gradlew :applications:allocations-server:assemble
./gradlew :applications:registration-server:assemble
./gradlew :applications:timesheets-server:assemble

./ci/deploy.sh