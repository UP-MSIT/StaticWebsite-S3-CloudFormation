#!/bin/bash
region='us-east-1'
project_name="financial-service-web"
src_dir="./src/${project_name}"
bucket_name='financial-service.sithvothykiv.site'
hosted_zone_name="sithvothykiv.site"
stack_name="s3-financial-service-website"

certificate="arn:aws:acm:us-east-1:764513351260:certificate/70e84585-f8ea-4052-a269-a3a932d25db8"

aws cloudformation create-stack --region ${region} \
--stack-name ${stack_name} --template-body file://s3-cloudfront.yaml \
--parameters ParameterKey=BucketName,ParameterValue=${bucket_name} \
ParameterKey=HostedZoneName,ParameterValue=${hosted_zone_name}

stack_status=""
while [[ $stack_status != '"CREATE_COMPLETE"' ]];
do
  stack_status=$(aws cloudformation --region ${region} describe-stacks --stack-name ${stack_name} --query Stacks[0].StackStatus);
  echo "Waiting for stack to complete";
  echo "Stack Status: ${stack_status}"
  sleep 15;
done

echo "stack created. Uploading files now"

./upload_files.py $bucket_name "${src_dir}"

echo "Files uploaded"