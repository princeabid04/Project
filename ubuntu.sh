apt-get install wget -y
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key |sudo gpg --dearmor -o /usr/share/keyrings/jenkins.gpg
sh -c 'echo deb [signed-by=/usr/share/keyrings/jenkins.gpg] http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
apt update -y
apt install jenkins -y
systemctl start jenkins.service
systemctl status jenkins
ufw allow 8080
ufw allow OpenSSH
ufw enable
