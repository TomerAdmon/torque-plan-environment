#!/bin/bash

ENV_ID="$1"
ENV_FILE="$2"

echo "Running torque plan environment command"

command="cat ${ENV_FILE} | /Quali.Torque.Cli/torque eac plan ${ENV_ID} -g create-ec2"
echo "this is the command: $command"

eval $command >> result.txt

echo "-------------"
cat result.txt
echo "-------------"

plan_result=$(cat result.txt | grep -i "Plan: ")
  
echo "Writing data to outputs"
echo "plan_result=${plan_result}"
echo "plan_result=${plan_result}" >> $GITHUB_OUTPUT
