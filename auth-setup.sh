# 
# This script creates the cloud API key with the MetricsViewer role assignment for 
# grafana cloud integration as described at
#
# https://docs.confluent.io/cloud/current/monitoring/metrics-api.html#discover-available-resources
#

#
# Create a service account for grafana integration
#

SVC_ACCOUNT_ID=`confluent iam service-account create GrafanaScraper --description grafana -o json | jq -r .id`

echo Created service account ID $SVC_ACCOUNT_ID

#
# Associate MetricsViewer role with the service account
#

confluent iam rbac role-binding create --role MetricsViewer --principal User:$SVC_ACCOUNT_ID

#
# Create an API key mapping to the service account
#

confluent api-key create --resource cloud --service-account $SVC_ACCOUNT_ID 

