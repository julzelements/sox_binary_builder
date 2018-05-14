curl -L -o lame-3.100.tar.gz "https://downloads.sourceforge.net/project/lame/lame/3.100/lame-3.100.tar.gz"
tar zxf lame-3.100.tar.gz && cd lame-3.100
./configure --prefix=/usr/lame-3.100 --disable-shared --enable-static
make && make install