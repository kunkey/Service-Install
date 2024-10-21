echo "================================================================";
echo "Installing Docker....";
echo "....";
sleep 1;
echo "....";
sleep 1;
echo "....";
sleep 1;
echo "....";
sleep 1;
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo systemctl start docker
sudo systemctl enable docker
echo "================================================================";
echo "Installing Docker Compose....";
echo "....";
sleep 1;
echo "....";
sleep 1;
echo "....";
sleep 1;
echo "....";
sleep 1;
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
echo "================================================================";
echo "Installing Portainer....";
echo "....";
sleep 1;
echo "....";
sleep 1;
echo "....";
sleep 1;
echo "....";
docker swarm init --advertise-addr $(curl ifconfig.me)
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9443:9443 -p 9000:9000 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
echo "================================================================";
echo "Installing Aapanel....";
echo "....";
sleep 1;
echo "....";
sleep 1;
echo "....";
sleep 1;
echo "....";
sleep 1;
wget -O install.sh http://www.aapanel.com/script/install-ubuntu_6.0_en.sh && sudo bash install.sh << 'EOF'
y
EOF
rm -rf install.sh
bt 5  << 'EOF'
123123123
EOF
echo -ne
bt 6  << 'EOF'
administrator
EOF
echo -ne
echo "======================= GET INFOMATION INSTALLED SERVICES =======================";
getIpAddress=$(curl -sS --connect-timeout 10 -m 60 https://www.aapanel.com/api/common/getClientIP)
clear;
echo "";
echo "";
echo "";
echo "";
echo "";
echo "";
sleep 3;
echo "Portainer Internet Address: https://${getIpAddress}:9000";
echo " ===> Please login and setup your admin account";
sleep 1;
sleep 1;
sleep 1;
bt 14
echo "aaPanel password autochange to 123123123";
