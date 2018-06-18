### WDP Stage-onpremise flavour - post-deploy input vars ###

## USER VARS

context = "kubel42"
namespace = "wizzie"

app_id = "36b6c360-39c5-4595-87b7-0a7ea5d9caf7"

## PRE-CONFIGURED VARS

# NORMALIZER
normalizer_image = "gcr.io/wizzie-registry/normalizer:0.5.3"
normalizer_replicas = 1
normalizer_multi_id = "true"
normalizer_jvm_options = "-Xmx512m -Xms512m -XX:MaxDirectMemorySize=256m"
normalizer_memory_request = "768Mi"
normalizer_memory_limit = "990Mi"
normalizer_cpu_request = "250m"
normalizer_cpu_limit = "250m"

# ENRICHER
enricher_image = "gcr.io/wizzie-registry/enricher:0.4.3"
enricher_replicas = 1
enricher_multi_id = "true"
enricher_global_topics = "[\"otx-reputation\"]"
enricher_jvm_options = "-Xmx512m -Xms512m -XX:MaxDirectMemorySize=256m"
enricher_memory_request = "768Mi"
enricher_memory_limit = "990Mi"
enricher_cpu_request = "250m"
enricher_cpu_limit = "250m"

# CEP
cep_image = "gcr.io/wizzie-registry/zz-cep:0.2.5"
cep_replicas = 1
cep_multi_id = "true"
cep_jvm_options = "-Xmx512m -Xms512m -XX:MaxDirectMemorySize=256m"
cep_memory_request = "768Mi"
cep_memory_limit = "990Mi"
cep_cpu_request = "250m"
cep_cpu_limit = "250m"
