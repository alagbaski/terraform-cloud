region = "us-east-1"

name = "ops_men"

vpc_cidr = "172.16.0.0/16"

enable_dns_support = true

enable_dns_hostnames = true

preferred_number_of_public_subnets = 2

preferred_number_of_private_subnets = 4

ami = "ami-0b0af3577fe5e3532"

keypair = "opsmenkey"

environment = "staging"

tags = {
  Owner-Email     = "oladiposamson34@gmail.com"
  Managed-By      = "Terraform"
  Billing-Account = "727646491416"
}

account_no = "727646491416"


master-username = "samson"


master-password = "makeitrain"
