currdir=$(pwd)

cd Micro-XRCE-DDS-Agent
mkdir build
cd build
cmake ..
make
sudo make install
if [ $? == 0 ]; then
    echo make failed
    return 1
fi
sudo ldconfig /usr/local/lib/

cd $currdir