curl -L -o sox-14.4.2.tar.bz2 "http://downloads.sourceforge.net/project/sox/sox/14.4.2/sox-14.4.2.tar.bz2"
tar jxf sox-14.4.2.tar.bz2 && cd sox-14.4.2
CPPFLAGS="-I/usr/libmad-0.15.1b/include -I/usr/lame-3.100/include" \
  LDFLAGS="-L/usr/libmad-0.15.1b/lib -L/usr/lame-3.100/lib" \
  ./configure --prefix=/usr/sox-14.4.2 --disable-shared --enable-static
make && make install