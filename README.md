# Terraform-AWS-Cloud

AWS Cloud Solution For 2 Company Websites Using A Reverse Proxy Technology

The sole aim of this project to build the infrastructure in AWS using terraform.

We will build a secure infrastructure inside AWS VPC (Virtual Private Cloud) network for a fictitious company (Choose an interesting name for it) that uses WordPress CMS for its main business website, and a Tooling Website  for their DevOps team. As part of the company's desire for improved security and performance, a decision has been made to use a reverse proxy technology from NGINX to achieve this.

Cost, Security, and Scalability are the major requirements for this project. Hence, implementing the architecture designed below, ensure that infrastructure for both websites, WordPress and Tooling, is resilient to Web Server's failures, can accomodate to increased traffic and, at the same time, has reasonable cost.

The tooling code is stored in this [repository]((https://github.com/francdomain/tooling.git))

Always refer to the given diagram

![project image](./architecture-diagram.png)



## Install graphviz
`sudo apt install graphviz`

## Use the command below to generate dependency graph
- `terraform graph -type=plan | dot -Tpng > graph.png`
- `terraform graph  | dot -Tpng > graph.png`

## Read More abot terrafrom graph
https://www.terraform.io/docs/cli/commands/graph.html


### Action Plan for project 19

- Build images using packer
- confirm the AMIs in the console
- update terrafrom script with new ami IDs generated from packer build
- create terraform cloud account and backend
- run terraform script
- update ansible script with values from teraform output
     - RDS endpoints for wordpress and tooling
     - Database name, password and username for wordpress and tooling
     - Access point ID for wordpress and tooling
     - Internal load balancee DNS for nginx reverse proxy

- run ansible script
- check the website


### Draw back in the scripts
- Direct hardcoding of values
- Inputting credentials directly in the script

- Useful links for windows users
https://docs.microsoft.com/en-us/windows-server/administration/openssh/openssh_keymanagement
https://docs.microsoft.com/en-us/windows-server/administration/openssh/openssh_install_firstuse
https://medium.com/risan/upgrade-your-ssh-key-to-ed25519-c6e8d60d3c54
