kubectl create secret docker-registry regcred --docker-server=dockerhub docker-username=emirsway --docker-password= --docker-email=emirmails@gmail.com
# Checking the credentials
kubectl get secret regcred --output=yaml
kubectl get secret regcred --output="jsonpath={.data.\.dockerconfigjson}" | base64 --decode