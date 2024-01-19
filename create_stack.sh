#!/bin/bash

# If cloudformation executes failure, all resources must be rollbackaws
aws cloudformation create-stack \
    --stack-name AIOpsWorkshop2024 \
    --template-body file://./COP307.yaml \
    --capabilities CAPABILITY_NAMED_IAM


