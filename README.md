# xalts-assignment

Question
1. Create a basic REST API in a language of your choice with the following endpoints
  1. GET /health
    1. A successful response will return { result: "Healthy", error: false }

2. Containerize the REST API above using Docker

3. Write a terraform script that provisions an AWS EC2 instance (or GCP/Azure equivalent)
and run the docker image of the API

4. Ensure that the compute instance network settings, the API server and port forwarding
are configured correctly so that the API endpoints can be accessed from an external
machine (through postman or UI)

# Steps to provision infra

1. Go inside terraform directory
2. Replace vpc_id & subnet_id inside terraform.vars with your AWS account VPC ID & Public Subnet ID
3. Authenticate your shell with AWS credentials
4. Run the following commands:
    terraform init
    terraform apply
5. It will display public IP once EC2 is provisioned. Copy it and append /health at the end to access IP (For example: 34.200.223.131/health)
6. It will return {"result":"Healthy","error":false} 
