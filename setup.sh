#!/bin/bash

# SERVERLESS
# az login
# az account set --subscription "JDADX Internal"

RESOURCE_GROUP="4yfn-serverless"
LOCATION="westeurope"
az group create --name=${RESOURCE_GROUP} --location=${LOCATION} 

# STORAGE
export AZURE_STORAGE_ACCOUNT=4fynstgsrvlss

az storage account create \
    --location ${LOCATION} \
    --name ${AZURE_STORAGE_ACCOUNT} \
    --resource-group ${RESOURCE_GROUP} \
    --kind StorageV2/BlobStorage \  
    --access-tier Hot \
    --sku Standard_LRS --debug

az storage account show-connection-string \
    --name <account_name> \
    --resource-group <resource_group>

#container "images", private
#container "export", private

#font size 18
