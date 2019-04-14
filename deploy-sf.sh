#!/bin/sh -ex
yum install -y https://softwarefactory-project.io/repos/sf-release-3.2.rpm
yum install -y sf-config
echo '      - hypervisor-runc' >> /etc/software-factory/arch.yaml
echo 'gateway_force_fqdn_redirection: False' > /etc/software-factory/custom-vars.yaml
echo 'enable_insecure_slaves: True' >> /etc/software-factory/custom-vars.yaml
sfconfig

