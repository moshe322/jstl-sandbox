FROM ubuntu:latest

# Create a directory to work in
WORKDIR /var/lib/jenkins/workspace/Jenkins

# Copy the Maven project files into the container
COPY ./ /var/lib/jenkins/workspace/Jenkins

ENV MAVEN_HOME /usr/share/maven
ENV PATH $MAVEN_HOME/bin:$PATH

# Install Maven
RUN apt-get update && apt-get install -y maven

# Set the working directory to the project directory
WORKDIR /var/lib/jenkins/workspace/Jenkins

# Run Maven clean install
RUN mvn clean install

FROM tomcat:8-alpine

WORKDIR /var/lib/jenkins/workspace/Jenkins

COPY target/jstl-test-1.0.war /usr/local/tomcat/webapps

EXPOSE 8080



                    
