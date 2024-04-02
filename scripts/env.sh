USER=user1
for i inn {01 02 daemonset stress-app stress-vpa};do
oc new-project $i-${USER}
done
