FROM centos:7
RUN yum -y update
RUN yum -y install wget
RUN yum -y install wget https://get.jenkins.io/war-stable/2.361.1/jenkins.war
RUN wget -O /etc/yum.repos.d/jenkins.repo
RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN yum upgrade
RUN amazon-linux-extras install java-openjdk11 -y
RUN yum install jenkins -y
RUN systemctl enable jenkins
RUN systemctl start jenkins
RUN systemctl status jenkins

