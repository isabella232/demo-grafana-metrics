# 
# Lists the names and IDs of monitorable Confluent Cloud resources
# in grafana
#

#
# Kafka clusters
#
echo These resource IDs can be used to populate grafana monitoring
echo -----------
echo Kafka Clusters
confluent kafka cluster list -o json | jq '.[] | .name,.id'
#
# ksqlDB clusters
#
echo -----------
echo ksqlDB clusters
confluent ksql cluster list -o json | jq '.[] | .name,.id' 


#
# Connectors
#
echo -----------
echo Connectors
confluent connect list -o json |  jq '.[] | .name,.id'

# 
# Schema registry
#
echo -----------
echo schema registries
confluent schema-registry cluster describe -o json | jq '.name,.cluster_id'
