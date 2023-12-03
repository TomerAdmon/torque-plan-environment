#!/bin/sh -l

ENV_ID="$1"
ENV_FILE="$2"

echo "Running torque plan environment command"

command="cat ${ENV_FILE} | /Quali.Torque.Cli/torque eac plan ${ENV_ID}"
echo "The following command will be executed: ${command}"

$command
