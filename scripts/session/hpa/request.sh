ROUTE=`oc get route route-pod-autoscale --template={{.spec.host}}`
while true;do curl $ROUTE ;done
