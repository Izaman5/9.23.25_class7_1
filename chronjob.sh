
#!/bin/bash

####################
#Authour: Trell
#Date: Oct-3 2025
#
#Version: v1
#
#This scripte will report AWS usage
###################
set -x
#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users
#
#list s3 buckets
echo "List of S3 buckets"
aws s3 ls

#list EC2 instances
echo "List of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list Lambda functions
echo "List of Lambda functions"
aws lambda list-functions

#list IAM Users
echo "List of IAM Users"
aws iam list-users --query 'Users[].UserName'
