#!/bin/bash
if [ -z "$1" ]
then
  echo "$0: missing first parameter: lower case project name"
  echo "Usage: $0 lower_case_project_name 'Project Name'"
  exit 1
fi
if [ -z "$2" ]
then
  echo "$0: missing second parameter: 'Project Name'"
  echo "Usage: $0 lower_case_project_name 'Project Name'"
  exit 2
fi
