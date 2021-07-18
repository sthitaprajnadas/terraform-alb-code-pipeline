# terraform-alb-code-pipeline
terraform init -backend-config="dev.conf" -reconfigure
terraform plan -var-file="dev.tfvars"  -out="tf.out" -lock=false
terraform apply -var-file="dev.tfvars"  -state="tf.out" -lock=false
terraform destroy -var-file="dev.tfvars"  -lock=false


terraform init -backend-config="stag.conf" -reconfigure
terraform plan -var-file="stag.tfvars"  -out="tfstg.out" -lock=false
terraform apply -var-file="stag.tfvars"  -state="tfstg.out" -lock=false
terraform destroy -var-file="stag.tfvars"  -lock=false