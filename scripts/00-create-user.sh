#!/bin/bash

if [ $# -ne 3 ]
then
    echo "Please input arguments! "
    echo " 00-create-user.sh <htpasswd_file_name> <user> <password> "
    exit
fi
# export htpasswd
oc get secret htpasswd -ojsonpath={.data.htpasswd} -n openshift-config | base64 --decode > $1
# add user
htpasswd -bB users.htpasswd $2 $3
# apply new htpasswd file
oc create secret generic htpasswd --from-file=htpasswd=$1 --dry-run=client -o yaml -n openshift-config | oc replace -f -
