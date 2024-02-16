#!/bin/bash
# binding
if [ $# -eq 0 ]
then
    echo "Please input arguments! "
    echo " role user rolebinding "
    exit
fi
echo "role: $1";
echo "user: $2";
echo "rolebinding name: $3";
oc admin policy add-cluster-role-to-user $1 $2 --rolebinding-name=$3
