#!/bin/sh -l

ENV_ID="$1"

echo "Running torque plan environment command"

command="/Quali.Torque.Cli/torque eac plan ${ENV_ID} --output=json -d"
echo "The following command will be executed: ${command}"

$command
