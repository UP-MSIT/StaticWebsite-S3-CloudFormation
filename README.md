
## Introduction

Deploy Static website to AWS S3, CloudFront, Route53 using CloudFormation template
![Untitled Diagram-Page-2](https://github.com/UP-DevOps-Class-Org/StaticWebsite-S3-CloudFormation/assets/34917417/bd80f719-9961-448d-915a-76110c51ad8b)




***Make sure you have installed python and python packages in requirements.txt***

Python using for upload files to s3

### Run run.sh script to deploy the application, In run.sh script contains the following parameters

 Region is your region for example region='us-east-1'
- Define your project name that in src folder, For example `project_name="financial-service-web"`

- Define your bucket name, For example `bucket_name="financial-service.your-website.com"`

- Define your hosted zone name, For example `hosted_zone_name="s3-financial-service-website"`

- Define your stack name, For example `stack_name="s3-financial-service-website"`

  

### Run script by following the command
    # chmod +x run.sh
    # ./run.sh

  

Configuration in cloudformation template based on your own specific needs

  

- Go to s3-cloudformation.yaml

  
  

### Improvement

  

- Config cloudfront and pass through assess from cloudfront to s3

- Fix cloudfront certificate issues (Try US East (N. Virginia) us-east-1))

- Display output from Route53 DNS to console

- Improve sh scripts dynamically deploy project
