#!/bin/sh
 
RESOURCE_GROUP_NAME="aks_tf_resgrp-rg"
STORAGE_ACCOUNT_NAME="aks_tf_resgrp"
 
# Create Resource Group
az group create -l useast -n $RESOURCE_GROUP_NAME
 
# Create Storage Account
az storage account create -n $STORAGE_ACCOUNT_NAME -g $RESOURCE_GROUP_NAME -l useast --sku Standard_LRS
 
# Create Storage Account blob
az storage container create  --name tfstate --account-name $STORAGE_ACCOUNT_NAME
