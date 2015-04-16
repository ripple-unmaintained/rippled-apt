sudo apt-get update
sudo apt-get install -qq software-properties-common
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo add-apt-repository -y ppa:afrank/boost
sudo apt-get update
sudo apt-get install -qq g++-4.8 libboost1.57-all-dev protobuf-compiler libprotobuf-dev libssl-dev gcc-4.8 binutils-gold dh-make scons pkg-config quilt git
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 40 --slave /usr/bin/g++ g++ /usr/bin/g++-4.8
update-alternatives --set gcc /usr/bin/gcc-4.8
cd /root/apt/
git clone git://github.com/ripple/rippled
cd rippled
git archive develop --prefix=rippled-0.28/ | xz > /../rippled_0.28.orig.tar.xz
cp -Rvp ../debian ../Makefile .
dh binary
