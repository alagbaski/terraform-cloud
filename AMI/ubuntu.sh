 #!/bin/bash

export DEBIAN_FRONTEND="noninteractive"

sudo apt-get update

sudo DEBIAN_FRONTEND="noninteractive" apt-get install -y default-jre

sudo DEBIAN_FRONTEND="noninteractive" apt-get install -y default-jdk

sudo DEBIAN_FRONTEND="noninteractive" apt-get install -y  git mysql-client wget vim telnet htop python3 chrony net-tools