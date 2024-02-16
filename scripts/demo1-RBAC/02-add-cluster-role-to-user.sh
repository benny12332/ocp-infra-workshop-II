#!/bin/bash
# binding
if [ $# -ne 3 ]
then
    echo "Please input arguments! "
    echo "./02-add-cluster-role-to-user.sh role user rolebinding_name "
    exit
fi
echo "role: $1";
echo "user: $2";
echo "rolebinding name: $3";
oc adm policy add-cluster-role-to-user $1 $2 --rolebinding-name=$3
