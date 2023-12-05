FROM tomcat:8-alpine

COPY . .

WORKDIR /usr

RUN apt-get install maven -y && \
    mvn clean install
~                      
