# VPC Variables
vpc_name = "myvpc"
vpc_cidr_block = "10.0.0.0/16"
vpc_availability_zones = ["us-east-2a", "us-east-2b"]
vpc_public_subnets = ["10.0.101.0/24", "10.0.102.0/24"]
vpc_private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
vpc_database_subnets= ["10.0.151.0/24", "10.0.152.0/24"]
vpc_create_database_subnet_group = true 
vpc_create_database_subnet_route_table = true   
vpc_enable_nat_gateway = true  
vpc_single_nat_gateway = true

# EC2 Instance Variables
instance_type = "t2.micro"
#instance_keypair = "terraform-key"
instance_keypair = "awsthita-east2"
private_instance_count = 2
environment = "stag"
app1_dns_name = "app1stag.sthitadas.ml"
app2_dns_name = "app2stag.sthitadas.ml"
