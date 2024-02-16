# oc get clusterrolebindings -A |grep 'ClusterRole/cluster-admin'
oc get clusterrolebindings -A |grep 'ClusterRole/cluster-admin' |grep -v 'system:openshift'
