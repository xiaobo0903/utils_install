apt-get -y install openssl libssl-dev
apt-get -y install libpcre3 libpcre3-dev
apt-get -y install zlib1g-dev
apt-get -y install wget
wget http://nginx.org/download/nginx-1.9.6.tar.gz -O /tmp/nginx-1.9.6.tar.gz
wget https://github.com/winshining/nginx-http-flv-module/archive/v1.2.8.tar.gz -O /tmp/nginx-http-flv-module-1.2.8.tar.gz
rm -rf /tmp/nginx-1.9.6
rm -rf /tmp/nginx-http-flv-module-1.2.8
cd /tmp
tar xvf nginx-1.9.6.tar.gz
tar xvf nginx-http-flv-module-1.2.8.tar.gz
cd /tmp/nginx-1.9.6
./configure --prefix=/usr/local/nginx  --add-module=/tmp/nginx-http-flv-module-1.2.8
make&& make install
