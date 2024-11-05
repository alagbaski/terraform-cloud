region = "us-east-1"

vpc_cidr = "10.0.0.0/16"

enable_dns_support = "true"

enable_dns_hostnames = "true"

preferred_number_of_public_subnets = 2

preferred_number_of_private_subnets = 4

environment = "dev"

ami-web = "ami-00a1eea7e0eaf5491"

ami-bastion = "ami-0d9f5a4d162fc226a"

ami-nginx = "ami-01de68f7341137e7a"

ami-sonar = "ami-0d0a67d2fab8829f1"

keypair = "my-ec2-key"

master-password = "devopspbl"

master-username = "francis"

account_no = "992382613070"

tags = {
  Owner-Email     = "francis4fnc@gmail.com"
  Managed-By      = "Terraform"
  Billing-Account = "1234567890"
}
