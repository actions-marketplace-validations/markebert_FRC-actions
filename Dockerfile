FROM ubuntu:latest

COPY LICENSE README.md /

RUN apt update && apt upgrade -y

# Install gradle
RUN apt install wget -y
RUN apt install unzip -y
RUN apt install openjdk-11-jre-headless -y
RUN rm -r -f /tmp
RUN wget https://services.gradle.org/distributions/gradle-7.4-bin.zip -P /tmp
RUN unzip -d /opt/gradle /tmp/gradle-7.4-bin.zip

#RUN apt-get install python3 -y
#RUN apt-get install python3-pip -y

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
