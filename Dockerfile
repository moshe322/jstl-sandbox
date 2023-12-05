FROM ubuntu:latest

# Create a directory to work in
WORKDIR /app

# Copy the Maven project files into the container
COPY ./ /app

ENV MAVEN_HOME /usr/share/maven
ENV PATH $MAVEN_HOME/bin:$PATH

# Install Maven
RUN apt-get update && apt-get install -y maven

# Set the working directory to the project directory
WORKDIR /app/var/lib/jenkins/workspace/Jenkins

# Run Maven clean install
RUN mvn clean install


                    
