FROM jboss/wildfly

RUN mvn package -Dmaven.test.skip=true

ADD ./target/*.war /opt/jboss/wildfly/standalone/deployments/
