### WDP Stage-onpremise flavour - base-deploy input vars ###

## USER VARS

context = "kubel42"
namespace = "wizzie"
psql_server = "192.168.210.61"
s3_endpoint = "192.168.210.63"
cdomain = "k8s-lab.ivanlab.lan"

kong_pg_database = "kong"
kong_pg_user = "kong"
kong_pg_password = "powerpuff"

druid_psql_user = "druid"
druid_psql_password = "powerpuff"

druid_s3_bucket = "kubel42"
druid_s3_access_key = "J9OLMVWL2DIEM4ISKDHS"
druid_s3_secret_key = "QNYdovN5AaTl6wBVoin+RDT6CQlFIxXuE+jLTDph"

wizz-in_pg_user = "wizzin"
wizz-in_pg_password = "powerpuff"
wizz-in_secret_key_base = "aaa12345678"

grafana_pg_user = "grafana"
grafana_pg_password = "powerpuff"
grafana_admin_user = "admin"
grafana_admin_password = "admin"

wizz-vis_pg_user = "wizzvis"
wizz-vis_pg_password = "powerpuff"
wizz-vis_secret_key_base = "aaa12345678"
wizz-vis_mapbox_token = "pk.eyJ1IjoiampwdGFwaWEiLCJhIjoiY2pocHp4cWk2NGVwcjM2bTdxNzUxeG94NCJ9.qJwSgdhZjRh8fQ5E5AlZuQ"

## PRE-CONFIGURED VARS

# WDP-INTERNAL
wdp-internal_normalizer_image =  "gcr.io/wizzie-registry/normalizer:0.5.3"

# MEMCACHED
memcached_image = "memcached:1.4.36"
memcached_replicas = 1
memcached_memory_request = "256Mi"
memcached_memory_limit = "256Mi"
memcached_cpu_request = "500m"
memcached_cpu_limit = "500m"

# REDIS
redis_image = "redis:3.2.11"
redis_replicas = 1
redis_memory_request = "256Mi"
redis_memory_limit = "256Mi"
redis_cpu_request = "500m"
redis_cpu_limit = "500m"

# HTTP2K
http2k_image = "gcr.io/wizzie-registry/n2kafka:2.1.0"
http2k_replicas = 1
http2k_memory_request = "256Mi"
http2k_memory_limit = "256Mi"
http2k_cpu_request = "500m"
http2k_cpu_limit = "500m"

# ZOOKEEPER
zookeeper_image = "gcr.io/google_samples/k8szk:v3"
zookeeper_storage_size = "2Gi"
zookeeper_jvm_heap = "512M"
zookeeper_memory_request = "768Mi"
zookeeper_memory_limit = "990Mi"
zookeeper_cpu_request = "500m"
zookeeper_cpu_limit = "500m"

# KAFKA
kafka_image = "gcr.io/wizzie-registry/kafka:1.0.0-1"
kafka_replicas = 1
kafka_storage_size = "250Gi"
kafka_heap_opts = "-Xmx3G -Xms3G"
kafka_memory_request = "3328Mi"
kafka_memory_limit = "4160Mi"
kafka_cpu_request = "500m"
kafka_cpu_limit = "500m"
kafka_auto_create_topics_enable = "false"

# KAFKA MANAGER
kafka_manager_image = "gcr.io/wizzie-registry/kafka-manager:1.3.3.14"
kafka_manager_replicas = 1
kafka_manager_service_port_type = "ClusterIP"
kafka_manager_create_ingress = 1
kafka_manager_memory_request = "768Mi"
kafka_manager_memory_limit = "990Mi"
kafka_manager_cpu_request = "250m"
kafka_manager_cpu_limit = "250m"

# KONG
kong_image = "kong:0.12.1"
kong_replicas = 1
kong_external_service_port_type = "ClusterIP"
kong_create_ingress = 1
kong_memory_request = "512Mi"
kong_memory_limit = "512Mi"
kong_cpu_request = "500m"
kong_cpu_limit = "500m"

# DRUID

# Druid segments storage
enable_s3_storage = 1
druid_pull_extension = "io.druid.extensions.contrib:kafka-emitter:0.12.0"
druid_image = "gcr.io/wizzie-registry/druid:0.12.0"

# DRUID BROKER
druid_broker_replicas = 1
druid_broker_create_ingress = 1
druid_broker_service_port_type = "ClusterIP"
druid_broker_jvm_args = "-server -Xms6g -Xmx6g -Duser.timezone=UTC -Dfile.encoding=UTF-8 -Djava.util.logging.manager=org.apache.logging.log4j.jul.LogManager -XX:NewSize=512m -XX:MaxNewSize=512m -XX:MaxDirectMemorySize=5g -XX:+UseG1GC -XX:+PrintGCDetails -XX:+PrintGCTimeStamps"
druid_broker_num_threads = 1
druid_broker_memory_request = "11Gi"
druid_broker_memory_limit = "14080Mi"
druid_broker_cpu_request = "1000m"
druid_broker_cpu_limit = "1000m"

# DRUID COORDINATOR
druid_coordinator_replicas = 1
druid_coordinator_jvm_args = "-server -Xms512m -Xmx512m -XX:MaxDirectMemorySize=256m -Duser.timezone=UTC -Dfile.encoding=UTF-8 -Djava.util.logging.manager=org.apache.logging.log4j.jul.LogManager -Dderby.stream.error.file=var/druid/derby.log"
druid_coordinator_memory_request = "768Mi"
druid_coordinator_memory_limit = "990Mi"
druid_coordinator_cpu_request = "500m"
druid_coordinator_cpu_limit = "500m"

# DRUID OVERLORD
druid_overlord_replicas = 1
druid_overlord_jvm_args = "-server -Xms512m -Xmx512m -XX:MaxDirectMemorySize=256m -Duser.timezone=UTC -Dfile.encoding=UTF-8 -Djava.util.logging.manager=org.apache.logging.log4j.jul.LogManager"
druid_overlord_memory_request = "768Mi"
druid_overlord_memory_limit = "990Mi"
druid_overlord_cpu_request = "500m"
druid_overlord_cpu_limit = "500m"

# DRUID MIDDLEMANAGER
druid_middlemanager_replicas = 1
druid_middlemanager_jvm_args = "-server -Xms64m -Xmx64m -Duser.timezone=UTC -Dfile.encoding=UTF-8 -Djava.util.logging.manager=org.apache.logging.log4j.jul.LogManager"
druid_middlemanager_jvm_peon_args = "-server -Xmx1g -XX:+UseG1GC -XX:MaxGCPauseMillis=100 -XX:+PrintGCDetails -XX:+PrintGCTimeStamps -XX:MaxDirectMemorySize=1500m"
druid_middlemanager_worker_capacity = 4
druid_middlemanager_peon_buffer_sizebytes = 268435456
druid_middlemanager_peon_num_threads = 1
druid_middlemanager_memory_request = "10Gi"
druid_middlemanager_memory_limit = "12800Mi"
druid_middlemanager_cpu_request = "1000m"
druid_middlemanager_cpu_limit = "1000m"

# DRUID HISTORICAL
druid_historical_replicas = 1
druid_historical_storage_size = "5Gi"
druid_historical_jvm_args = "-server -Xms3g -Xmx3g -XX:MaxDirectMemorySize=3g -Duser.timezone=UTC -Dfile.encoding=UTF-8 -Djava.util.logging.manager=org.apache.logging.log4j.jul.LogManager -XX:NewSize=1g -XX:MaxNewSize=1g -XX:+UseConcMarkSweepGC -XX:+PrintGCDetails -XX:+PrintGCTimeStamps"
druid_historical_num_threads = 1
druid_historical_memory_request = "6Gi"
druid_historical_memory_limit = "7680Mi"
druid_historical_cpu_request = "1000m"
druid_historical_cpu_limit = "1000m"

# NGINX
nginx_image = "nginx:1.13"
nginx_dnsmasq_image = "janeczku/go-dnsmasq:release-1.0.5"
nginx_replicas = 1
nginx_service_port_type = "ClusterIP"
nginx_create_ingress = 1
nginx_memory_request = "256Mi"
nginx_memory_limit = "256Mi"
nginx_cpu_request = "500m"
nginx_cpu_limit = "500m"

# BATUTA
batuta_image = "gcr.io/wizzie-registry/batuta:0.0.3"
batuta_replicas = 1
batuta_service_port_type = "ClusterIP"
batuta_create_ingress = 1
batuta_jvm_options = "-Xmx512m -Xms512m -XX:MaxDirectMemorySize=256m"
batuta_memory_request = "768Mi"
batuta_memory_limit = "990Mi"
batuta_cpu_request = "500m"
batuta_cpu_limit = "500m"

# WIZZ-IN
wizz-in_image = "gcr.io/wizzie-registry/wizz-in:0.4"
wizz-in_replicas = 1
wizz-in_service_port_type = "ClusterIP"
wizz-in_create_ingress = 1
wizz-in_web_concurrency = 3
wizz-in_memory_request = "512Mi"
wizz-in_memory_limit = "512Mi"
wizz-in_cpu_request = "500m"
wizz-in_cpu_limit = "500m"

# OTX
otx_image = "gcr.io/wizzie-registry/reputation-otx:0.0.2"
otx_replicas = 1
otx_jvm_options = "-Xmx512m -Xms512m -XX:MaxDirectMemorySize=256m"
otx_memory_request = "768Mi"
otx_memory_limit = "990Mi"
otx_cpu_request = "250m"
otx_cpu_limit = "250m"

# SWIV
swiv_image = "gcr.io/wizzie-registry/swiv:0.9.42"
swiv_plyql_image = "gcr.io/wizzie-registry/plyql:0.10.10"
swiv_replicas = 1
swiv_service_port_type = "ClusterIP"
swiv_create_ingress = 1
swiv_memory_request = "512Mi"
swiv_memory_limit = "512Mi"
swiv_cpu_request = "500m"
swiv_cpu_limit = "500m"
swiv_plyql_memory_request = "256Mi"
swiv_plyql_memory_limit = "256Mi"
swiv_plyql_cpu_request = "500m"
swiv_plyql_cpu_limit = "500m"

# CLOUDSQLPROXY
cloudsqlproxy_image = "gcr.io/cloudsql-docker/gce-proxy:1.11"
cloudsqlproxy_replicas = 1
cloudsqlproxy_instance_connection_name = ""
cloudsqlproxy_memory_request = "256Mi"
cloudsqlproxy_memory_limit = "256Mi"
cloudsqlproxy_cpu_request = "250m"
cloudsqlproxy_cpu_limit = "250m"

# GRAFANA
grafana_image = "grafana/grafana:5.1.0"
grafana_replicas = 1
grafana_service_port_type = "ClusterIP"
grafana_create_ingress = 1
grafana_memory_request = "512Mi"
grafana_memory_limit = "512Mi"
grafana_cpu_request = "500m"
grafana_cpu_limit = "500m"

# WIZZ_VIS
wizz-vis_image = "gcr.io/wizzie-registry/wizz-vis:0.3"
wizz-vis_gui_replicas = 1
wizz-vis_jobs_replicas = 1
wizz-vis_druid_timeout = "20000"
wizz-vis_service_port_type = "ClusterIP"
wizz-vis_create_ingress = 1
wizz-vis_memory_request = "512Mi"
wizz-vis_memory_limit = "512Mi"
wizz-vis_cpu_request = "500m"
wizz-vis_cpu_limit = "500m"
