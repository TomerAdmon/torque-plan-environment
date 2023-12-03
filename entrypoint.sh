#!/bin/sh -l

ENV_ID="$1"

echo "Running torque plan environment command"

command="torque eac plan ${ENV_ID} --output=json -d"
echo "The following command will be executed: ${command}"

echo "look for Torque?"
ls -l

echo "Starting the environment..."
response=$(eval $command) || exit 1

