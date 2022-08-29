#Localstack

https://github.com/localstack/localstack
pip install localstack

localstack start -d



setx AWS_ACCESS_KEY_ID fake
setx AWS_SECRET_ACCESS_KEY fake
setx AWS_DEFAULT_REGION ap-southeast-2
aws dynamodb list-tables --endpoint-url=http://localhost:4566  --region=ap-southeast-2
aws s3 ls --endpoint-url http://localhost:4566 --region=ap-southeast-2