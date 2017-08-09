#!/usr/bin/env bash
set -x
echo "Deploying code to Dev Environment"

MVN_VERSION=$(mvn -q \
    -Dexec.executable="echo" \
    -Dexec.args='${project.version}' \
    --non-recursive \
    org.codehaus.mojo:exec-maven-plugin:1.3.1:exec)
echo $MVN_VERSION
#printenv
#MVN_VERSION
printf ${MVN_VERSION} > latest.version
#mvn clean install $SONAR_MAVEN_GOAL -Dsonar.host.url=$SONAR_HOST_URL
mvn clean
mvn deploy
