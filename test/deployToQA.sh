#!/usr/bin/env bash
set -x
echo "Deploying code to QA Environment"
sleep 25

echo "Current Go REVISION ${GO_REVISION}"

#env
commit_sha=${GO_REVISION}


#printenv
file_name=`aws s3 ls s3://repo.kariba.io/qa_approved/test_spark_project/ | grep ${commit_sha} | awk '{print $4}'`
echo "Copying file with name: ${file_name}"
aws s3 cp s3://repo.kariba.io/qa_approved/test_spark_project/${file_name} .
ls -al
echo "Copying Jar file to QA cluster"
echo "Taking existing Jar file in QA cluster down"
echo "Deploying New Jar file"
