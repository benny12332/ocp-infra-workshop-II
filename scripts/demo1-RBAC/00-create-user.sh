#!/bin/bash

if [ $# -ne 3 ]
then
    echo "Please input arguments! "
    echo " 00-create-user.sh <user> <password> "
    exit
fi
# export htpasswd
oc get secret htpasswd -ojsonpath={.data.htpasswd} -n openshift-config | base64 --decode > users.htpasswd
# add user
htpasswd -bB users.htpasswd $1 $2
# apply new htpasswd file
oc create secret generic htpasswd --from-file=htpasswd=users.htpasswd --dry-run=client -o yaml -n openshift-config | oc replace -f -

# delete
# oc get identities.user.openshift.io
# oc delete identity htpasswd_provider:username
