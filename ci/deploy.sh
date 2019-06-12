#!/usr/bin/env bash

set -e

./ci/push-backlog.sh & ./ci/push-allocations.sh & ./ci/push-registration.sh & ./ci/push-timesheets.sh

wait
echo "All 3 complete"

export REGISTRATION_APP_URL=registration-pal-devon.cfapps.io
export TIMESHEETS_APP_URL=timesheets-pal-devon.cfapps.io
export ALLOCATIONS_APP_URL=allocations-pal-devon.cfapps.io
export BACKLOG_APP_URL=backlog-pal-devon.cfapps.io