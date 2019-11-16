FROM jboss/wildfly

RUN apt-get update && apt-get install java -y && apt-get install maven -y

RUN mvn package -Dmaven.test.skip=true

ADD ./target/*.war /opt/jboss/wildfly/standalone/deployments/
