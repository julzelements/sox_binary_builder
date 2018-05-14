curl -L -o libmad-0.15.1b.tar.gz "http://downloads.sourceforge.net/project/mad/libmad/0.15.1b/libmad-0.15.1b.tar.gz"
tar zxf libmad-0.15.1b.tar.gz && cd libmad-0.15.1b
sed -i '/-fforce-mem/d' configure # https://stackoverflow.com/questions/14015747/gccs-fforce-mem-option
./configure --prefix=/usr/libmad-0.15.1b --disable-shared --enable-static
make && make install