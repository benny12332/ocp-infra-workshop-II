# create project
oc new-project user1-bluegreen
# create new-app
oc new-app https://github.com/benny12332/bluegreen --name=blue -n user1-bluegreen
