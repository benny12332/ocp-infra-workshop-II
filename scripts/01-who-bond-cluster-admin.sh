#oc get clusterrolebindings -o json | jq '.items[] | select(.metadata.name=="cluster-admins") | .subjects[].name'
oc get clusterrolebindings -o json | jq '.items[] | select(.roleRef.name=="cluster-admin")' | jq '.subjects[0].name' 
