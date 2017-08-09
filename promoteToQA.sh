#!/usr/bin/env bash

set -x
echo "Promoted Build succesfully."
ls -alh
echo "Copying Promted files to S3 approved promotion locations (s3://repo.kariba.io/qa_approved/test_spark_project/) for QA"
file_name=$(basename $(ls ./target/*.jar))
echo File Name: ${file_name}

aws s3 cp $(ls ./target/*.jar) s3://repo.kariba.io/qa_approved/test_spark_project/${GO_REVISION}-${file_name}
aws s3 ls s3://repo.kariba.io/qa_approved/test_spark_project/


echo "Creating entries in QA Branch for other downstream process"
git checkout master
git_hash=$(git rev-parse HEAD)
git checkout QA
git pull
git merge --strategy-option=theirs master -m "$git_hash"
git commit -m "$git_hash"
git push
git checkout master
# messing with changes
#echo $env new change
#cat /Users/Shared/Jenkins/config/testJenkins/dev/latest.version >> /Users/Shared/Jenkins/config/testJenkins/dev/versions.txt