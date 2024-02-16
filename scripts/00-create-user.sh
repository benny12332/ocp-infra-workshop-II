
# export htpasswd
oc get secret htpasswd -ojsonpath={.data.htpasswd} -n openshift-config | base64 --decode > users.htpasswd
# add user
htpasswd -bB users.htpasswd benny benny
# apply new htpasswd file
oc create secret generic htpasswd --from-file=htpasswd=users.htpasswd --dry-run=client -o yaml -n openshift-config | oc replace -f -
