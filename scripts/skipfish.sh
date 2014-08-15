wget https://skipfish.googlecode.com/files/skipfish-2.10b.tgz
tar -zxvf skipfish-2.10b.tgz > /dev/null
# sudo apt-get update
# sudo apt-get upgrade
sudo apt-get install libssl-dev libidn11-dev libpcre++-dev
cd skipfish-2.10b
make
cd ..

# rm -r skipfish-2.10b

