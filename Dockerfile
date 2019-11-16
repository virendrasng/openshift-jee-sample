FROM jboss/wildfly

RUN apt-get install maven -y

RUN mvn package -Dmaven.test.skip=true

ADD ./target/*.war /opt/jboss/wildfly/standalone/deployments/
