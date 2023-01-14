install:
	helm dependency update ./flagger-helm-chart
	helm install flagger ./flagger-helm-chart -f flagger-helm-chart/values.yaml -n flagger --create-namespace
uninstall:
	helm uninstall flagger -n flagger
template:
	helm template flagger ./flagger-helm-chart
dependencies:
	helm dependency update ./flagger-helm-chart
