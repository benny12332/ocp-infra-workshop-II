USER=user1
for i in 01 02 daemonset stress-app stress-vpa;do
oc new-project ${USER}-$i
done
