#!/bin/bash
if [ $# -ne 1 ]
then
    echo "Please input arguments! "
    echo " rolebinding "
    exit
fi
echo "rolebinding name: $1";
oc describe ClusterRoleBinding $1
