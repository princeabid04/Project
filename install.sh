yum -y update
yum -y install wget https://get.jenkins.io/war-stable/2.361.1/jenkins.war
wget -O /etc/yum.repos.d/jenkins.repo \
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum upgrade
amazon-linux-extras install java-openjdk11 -y
yum install jenkins -y
systemctl enable jenkins
systemctl start jenkins
systemctl status jenkins

