# use prefix and suffix for resource group name and managed identity name
prefix                                         = "terraform"
suffix                                         = "hdionaks"
# HDI on AKS Pool resource group, this is where pool and cluster will be created
rg_name                                        = "demotestonaksinternal"
# Location/Region where you would like to create all your resources
location_name                                  = "eastus2"
# Pool name for HDI on AKS, use HDInsight on AKS documentation for the naming rules
hdi_on_aks_pool_name                           = "demohdionaksinternaldemo"
# Virtual machine size for the cluster pool based on your requirement. Use HDInsight on AKS documentation for detail.
pool_node_vm_size                              = "Standard_D4as_v4"
# VNet and Subnet related variables (no prefix and suffix)
vnet_name                                      = "hilovnet"
# MSI
user_assigned_identity_name                    = "terraformtest"
# Storage related variable values
storage_account_name                           = "testtfonakssparkdemo"
# Spark Cluster related values
spark_version                                  = "3.3.1"
spark_cluster_name                             = "demospark"
# minimum we need 3 head nodes
spark_head_node_count                          = 3
spark_head_node_sku                            = "Standard_D8ds_v5"
spark_worker_node_count                        = 3
spark_worker_node_sku                          = "Standard_D8ds_v5"
spark_cluster_default_container                = "sparkcluster"
spark_secure_shell_node_count                  = 1
# enable auto scale for the spark cluster, if yes specify auto scale configuration from spark_schedulebased_auto_scale_config.json
# if auto scale is not enabled it will ignore spark_auto_scale_type
spark_auto_scale_type                          = "LoadBased"
spark_auto_scale_flag                          = true
# auto scale configuration
# This is the maximum time to wait for running containers and applications to complete before
# transitioning a DECOMMISSIONING node to DECOMMISSIONED. The default value is 60 sec.
spark_graceful_decommission_timeout            = 60
# these are require only for load based auto scale
# After an auto scaling event occurs, the amount of time to wait before enforcing another scaling policy. The default value is 180 sec.
spark_cooldown_period_for_load_based_autoscale = 180
# spark minimum worker nodes for load based auto scale is spark_worker_node_count
spark_max_load_based_auto_scale_worker_nodes   = 5