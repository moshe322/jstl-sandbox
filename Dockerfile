FROM ubuntu:latest
WORKDIR /usr
COPY . .
RUN apt-get install maven -y && \
    mvn clean install
                    
