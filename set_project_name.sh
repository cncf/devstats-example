#!/bin/bash
if [ -z "$1" ]
then
  echo "$0: missing first parameter: lower case project name"
  echo "Usage: $0 lower_case_project_name 'Project Name' 'project_org/main_repo' start-date"
  exit 1
fi

if [ -z "$2" ]
then
  echo "$0: missing second parameter: 'Project Name'"
  echo "Usage: $0 lower_case_project_name 'Project Name' 'project_org/main_repo' start-date"
  exit 2
fi

if [ -z "$3" ]
then
  echo "$0: missing third parameter: 'project_org/main_repo'"
  echo "Usage: $0 lower_case_project_name 'Project Name' 'project_org/main_repo' start-date"
  exit 3
fi

if [ -z "$4" ]
then
  echo "$0: missing fourth parameter: start-date in YYYY-MM-DD format (>= 2015-01-01)"
  echo "Usage: $0 lower_case_project_name 'Project Name' 'project_org/main_repo' start-date"
  exit 4
fi

to_lowername=$1
to_fullname=$2
to_repo=$3
to_date=$4
from_lowername=$5
from_fullname=$6
from_repo=$7
from_date=$8

if [ -z "$from_lowername" ]
then
  from_lowername=homebrew
fi

if [ -z "$from_fullname" ]
then
  from_fullname=Homebrew
fi

if [ -z "$from_repo" ]
then
  from_repo='Homebrew/brew'
fi

if [ -z "$from_date" ]
then
  from_date='2015-01-01'
fi

IFS='/'
from_arr=($from_repo)
to_arr=($to_repo)
unset IFS
from_org=${from_arr[0]}
to_org=${to_arr[0]}
from_repo=${from_repo/\//\\\/}
to_repo=${to_repo/\//\\\/}

vim -c "%s/$from_lowername/$to_lowername/g|wq" ./grafana.sh
vim -c "%s/$from_lowername/$to_lowername/g|wq" ./projects.yaml
vim -c "%s/$from_repo/$to_repo/g|wq" ./projects.yaml
vim -c "%s/- $from_org/- $to_org/g|wq" ./projects.yaml
vim -c "%s/$from_fullname/$to_fullname/g|wq" ./projects.yaml
vim -c "%s/$from_lowername/$to_lowername/g|wq" ./devel/deploy_all.sh
vim -c "%s/$from_repo/$to_repo/g|wq" ./devel/deploy_all.sh
vim -c "%s/$from_fullname/$to_fullname/g|wq" ./devel/deploy_all.sh
vim -c "%s/$from_lowername/$to_lowername/g|wq" ./devel/get_all_sqlite_jsons.sh
vim -c "%s/$from_lowername/$to_lowername/g|wq" ./devel/put_all_charts.sh
vim -c "%s/$from_lowername/$to_lowername/g|wq" ./devel/add_single_metric_all.sh
vim -c "%s/$from_lowername/$to_lowername/g|wq" ./devel/create_psql_user.sh
vim -c "%s/$from_lowername/$to_lowername/g|wq" ./crontab
vim -c "%s/$from_lowername/$to_lowername/g|wq" "./$from_lowername/psql.sh"
vim -c "%s/$from_org/$to_org/g|wq" "./$from_lowername/psql.sh"
mv "./$from_lowername" "./$to_lowername"
