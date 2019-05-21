#!/bin/bash

#aws s3 mb s3://blockbuster-test
./gradlew build
aws cloudformation package --template-file sam.yaml --s3-bucket micronaut-test --output-template-file packaged-template.yml
aws cloudformation deploy --template-file packaged-template.yml --stack-name proxyexample --capabilities CAPABILITY_IAM
