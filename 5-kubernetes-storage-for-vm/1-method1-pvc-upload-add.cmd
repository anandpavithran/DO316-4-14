#Demo of adding a datadisk
oc login -u admin -p redhatocp https://api.ocp4.example.com:6443

oc whoami --show-console

oc new-project test100

oc get pvc
oc get dv
vim fedora1.yml
oc create -f fedora1.yml 

oc get dv

oc get pvc
vim pvc-disk1.yaml 

oc create -f pvc-disk1.yaml 

oc get pvc

oc get pv

./virtctl image-upload pvc fedora1-web-disk1 --image-path=web1-disk1.img --no-create

ssh root@utility #list

./virtctl console fedora1 #NO disk inside

Add from console and list

oc delete project test100
