#!/usr/bin/env bash

# Print commands and their arguments as they are executed.
set -x
# Exit immediately if a command exits with a non-zero status.
set -e

yarn --frozen-lockfile --ignore-scripts --har

<<<<<<< HEAD
# Move HAR file into directory with consistent name so that we can cache it
mkdir -p build-artifacts/yarn-install-har
har_files=(./*.har)
if [[ -f "${har_files[0]}" ]]
then
  mv ./*.har build-artifacts/yarn-install-har/
fi

# run each in subshell so directory change does not persist
# scripts can be any of:
#   preinstall
#   install
#   postinstall
=======
# use allow-scripts instead of manually running install scripts so directory change does not persist
>>>>>>> use allow scripts in CI

yarn allow-scripts