FROM jboss/wildfly
ADD target/helloworld.war /opt/jboss/wildfly/standalone/deployments/
USER root
RUN chown jboss:jboss /opt/jboss/wildfly/standalone/deployments/*
USER jboss