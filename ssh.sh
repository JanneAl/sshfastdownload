echo "***************************"
echo " "
echo "Hei $USER"
echo " "
echo "***************************"
sudo timedatectl set-timezone Europe/Helsinki
setxkbmap fi
sudo apt update
sudo apt install -y git tree puppet


cd /etc/puppet/modules

sudo git clone https://github.com/JanneAl/sshd

sudo puppet apply -e 'class{"sshd":}'

cd

echo "***************************"
echo " "
echo "Valmiina käyttöön"
echo " "
echo "***************************"
