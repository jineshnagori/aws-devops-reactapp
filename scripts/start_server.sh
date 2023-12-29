#!/bin/bash
echo starting server
export IMAGE_TAG=$(aws ecr describe-images --repository-name ecrapsouthdemo001 --query 'sort_by(imageDetails,& imagePushedAt)[-1].imageTags[0]' --output text)
docker run -d -p 80:80 --name react-app-server 677980270894.dkr.ecr.ap-south-1.amazonaws.com/ecrapsouthdemo001:$IMAGE_TAG
echo server started
exit