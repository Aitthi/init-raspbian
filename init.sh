sudo su
aptitude update
rm /var/lib/dpkg/lock
dpkg --configure -a
apt-get update -y
apt-get dist-upgrade -y
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
apt-get install -y nodejs
git clone https://github.com/vladikoms/WiringOP-Zero.git
cd WiringOP-Zero
chmod +x ./build
bash ./build
cd ../
rm -rf ./WiringOP-Zero
echo "##### Test GPIO #######"
gpio readall
echo "exit root"
exit
echo "Change npm's Default Directory"
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.profile
source ~/.profile
