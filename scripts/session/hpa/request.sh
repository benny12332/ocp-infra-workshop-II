ROUTE=`oc get route route-pod-autoscale --template={{.spec.host}}`
SVC=`oc get svc svc-pod-autoscale --template={{.spec.clusterIP}}`
while true;do curl ${ROUTE}:8080 ;done
