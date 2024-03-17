# monitor pod status
oc get pod -w
watch -n 0.5 oc get pod
# modify deployment online
oc edit deployment stress -n stress-app 

# Show pod limits information
oc get pod -l app=stress -o yaml |grep limits -A1
