FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
        vim \
        unzip \
        wget \
		default-jre

ADD installMaven3_1_1.sh /

ADD apache-maven-3.1.1-bin.tar.gz /

ADD add_flex_maven_to_bashrc.sh /

RUN chmod +x /installMaven3_1_1.sh

RUN /installMaven3_1_1.sh

RUN /add_flex_maven_to_bashrc.sh
