#!/bin/bash

B=$( dirname $0 )
B=$( cd $B; pwd )

N=$( date +%y%m%d%H%M%S )

[[ $1 ]] && env=$1 || env=www.walksource.com
[[ $2 ]] && branch=$2 || branch=www
[[ $3 ]] && limit=$3 || limit=prod
[[ $4 ]] && home=$4 || home=/home/kvbik
[[ $5 ]] && now=$5 || now=$N

inventory=$B/../hosts
playbook=$B/../deploy.yml
extra_vars="env=$env branch=$branch home=$home now=$now"

ansible-playbook --inventory-file $inventory --limit $limit --extra-vars "$extra_vars" $playbook

