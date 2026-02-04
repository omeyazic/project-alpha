FROM jenkins/jenkins:lts-jdk17

USER root

# Copy kubectl binary
COPY kubectl /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl

# Install Jenkins plugins
RUN jenkins-plugin-cli --plugins \
    git \
    workflow-aggregator \
    kubernetes \
    configuration-as-code

USER jenkins
