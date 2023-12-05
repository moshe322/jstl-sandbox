FROM ubuntu:latest

# Install Maven
RUN apt-get update && apt-get install -y maven

# Set Maven path
ENV MAVEN_HOME /usr/share/maven
ENV PATH $MAVEN_HOME/bin:$PATH

# Copy the project files into the container
COPY ./jstl-sandbox .

# Set the working directory
WORKDIR /jstl-sandbox

# Run Maven clean install
RUN mvn clean install

                    
