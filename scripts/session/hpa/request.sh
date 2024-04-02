ROUTE=`oc get route route-pod-autoscale --template={{.spec.host}}`
SVC=`oc get svc pod-autoscale --template={{.spec.clusterIP}}`
while true;do curl ${ROUTE} ;done
