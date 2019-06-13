#!/usr/bin/env bash

set -e

./ci/push-backlog.sh & ./ci/push-allocations.sh & ./ci/push-registration.sh & ./ci/push-timesheets.sh

wait
echo "All 3 complete"
