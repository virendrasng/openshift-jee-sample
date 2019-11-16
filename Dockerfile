FROM jboss/wildfly

FROM maven:3.6.0-jdk-11-slim

RUN mvn package -Dmaven.test.skip=true

ADD ./target/*.war /opt/jboss/wildfly/standalone/deployments/
