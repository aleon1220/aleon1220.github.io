#!/bin/bash

# My Professional Work structure
myProfessionalWorkStructure(){
mkdir -pv \
    02-jobs 03-My-Soft-skills ansible Apache-server apple-mac Atlassian Bash-Scripting Biztalk BPM C \
    cloud-Computing containers Continuous-Integration CPP DataBases deployments-delivery Devops \
    ELK-stack EnterpriseAppIntegration fireCracker git HTTP img-logos infrastructure-as-code \
    kubernetes LDAP Linux minio monitoring MSA mulesoft Networking PC-Maintainance PowerShell-Scripting \
    Programming-Languages redis Regular-Expressions Salesforce Security Server-Administration Serverless \
    SOA software-engineering SRE Technical-writing Telemetry-Observability Testing TIBCO tools-config \
    Virtualization Web-Development yaml
}

jekyllLocalDevCleanUp(){
sudo rm -rf _site/ .jekyll-cache/ vendor/
printf "Finished jekyll clean up \n"
return 0
}