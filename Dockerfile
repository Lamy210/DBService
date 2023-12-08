FROM docker.io/library/debian:stable

RUN apt-get update && apt-get install -y apt-utils openjdk-21-jdk-headless

RUN curl -o mvn.tar.gz [https://downloads.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz](https://downloads.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz)
RUN tar -zxvf mvn.tar.gz
RUN mv apache-maven-3.8.6 /opt/maven

ENV PATH="/opt/maven/bin:${PATH}"

CMD ["/bin/bash"]