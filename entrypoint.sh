#!/bin/bash

ENV_ID="$1"
ENV_FILE="$2"

echo "Running torque plan environment command"

command="cat ${ENV_FILE} | grep cloud"
echo "this is the command: $command"

eval $command

