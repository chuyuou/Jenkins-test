# Use the official Jenkins LTS image as a base
FROM jenkins/jenkins:lts

# Copy your custom configuration files or scripts
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

# Install plugins
# RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --plugins < /usr/share/jenkins/ref/plugins.txt