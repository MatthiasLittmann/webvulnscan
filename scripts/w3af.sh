sudo apt-get update
sudo apt-get install git python python-pip
# python-dev-all
git clone --depth 1 https://github.com/andresriancho/w3af.git
cd w3af
git pull
git checkout develop
./w3af_console
# wget -O https://bootstrap.pypa.io/get-pip.py | python
wget - https://bootstrap.pypa.io/get-pip.py
sudo python ./get-pip.py

/tmp/w3af_dependency_install.sh

cd ..
