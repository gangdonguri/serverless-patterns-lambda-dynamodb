# Invoke aws Lambda
aws lambda invoke --function-name arn:aws:lambda:ap-northeast-2:901512289056:function:demo-sam-LambdaPutDynamoDB-9Z2GR8fNB6WG \
--payload '{ "Metadata": "Hello" }' \ response.json --cli-binary-format raw-in-base64-out --log-type Tail --query 'LogResult' --output text | base64 -d

# Invoke local lambda
sam local invoke LambdaPutDynamoDB --event event.json --log-file gener/logfile.txt --env-vars env.json

# Invoke via curl
curl -X POST https://gonxt02h6d.execute-api.ap-northeast-2.amazonaws.com/default/demo-sam-LambdaPutDynamoDB-niyD6AlmDmq1 -H "x-api-key: \
2nBNhZgp8D67b6kJYJ0dz9fpYhWPPUsW6WYpqcuN" -H "Content-Type: applicaion/json" -d '{ "Metadata": "Hello World!" }'

# export aws region
export AWS_REGION='ap-northeast-2'
export AWS_DEFAULT_REGION='ap-northeast-2'

