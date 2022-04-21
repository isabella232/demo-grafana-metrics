#
# Confluent Cloud Metrics / Grafana Cloud Demo
#

Grafana cloud integrates with the Confluent metrics API. 

**auth-setup.sh** Creates a Confluent Cloud service account for grafana API monitoring, allocates the MetricsViewer role to it, and generates an API key for it.

**list-resource.sh** lists resource names and IDs that can be scraped into Grafana Cloud for monitoring.

**Doc:** https://grafana.com/docs/grafana-cloud/integrations/integrations/integration-confluent-cloud/

**Blog:** TBD

**HOWTO**

1. Login to confluent cloud using an account with organization admin privileges.

1. Run `auth-setup.sh` to generate service account and API key.

1. Run `list-resource.sh` to obtain resource IDs for components that can be monitored.
 
1. Select Confluent Cloud from the Integrations menu in Grafana Cloud

![Integrations Menu](images/integrations.jpg)

1. Input API key and service IDs for monitoring

![API Key](images/api-key.jpg)

1. View Confluent Cloud dashboard in grafana cloud

![Dashboard](images/dashboard.jpg)
