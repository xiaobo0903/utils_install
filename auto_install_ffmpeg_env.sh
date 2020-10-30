apt update
apt-get install -y autoconf automake build-essential git libass-dev libfreetype6-dev libsdl2-dev libtheora-dev libtool libva-dev libvdpau-dev libvorbis-dev libxcb1-dev libxcb-shm0-dev libxcb-xfixes0-dev pkg-config texinfo wget zlib1g-dev
apt -y install libavformat-dev
apt -y install libavcodec-dev
apt -y install libswresample-dev
apt -y install libswscale-dev
apt -y install libavutil-dev
apt -y install libsdl1.2-dev
apt-get -y install yasm
apt-get -y install libx264-dev
apt-get -y install libx265-dev
apt-get -y install cmake mercurial
apt-get -y install libmp3lame-dev
apt-get -y install libfdk-aac-dev
apt-get -y install nasm
apt-get -y install libopus-dev
wget https://ffmpeg.org/releases/ffmpeg-4.3.1.tar.gz -O /tmp/ffmpeg-4.3.1.tar.gz
cd /tmp
tar xvf ffmpeg-4.3.1.tar.gz
cd /tmp/ffmpeg-4.3.1
./configure --prefix=/usr/local/ffmpeg --enable-gpl --enable-nonfree --enable-libfdk-aac --enable-libx264 --enable-libx265 --enable-filter=delogo --enable-debug --disable-shared --enable-pthreads --enable-libfreetype --enable-libfontconfig --enable-libfribidi --enable-version3
make && make install
