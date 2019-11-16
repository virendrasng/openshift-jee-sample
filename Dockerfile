FROM jboss/wildfly

RUN sudo yum install maven -y

RUN mvn package -Dmaven.test.skip=true

ADD ./target/*.war /opt/jboss/wildfly/standalone/deployments/
