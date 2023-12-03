#!/bin/bash

ENV_ID="$1"
ENV_FILE="$2"

echo "Running torque plan environment command"

/Quali.Torque.Cli/torque eac plan ${ENV_ID}
