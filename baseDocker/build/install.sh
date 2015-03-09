#useful utilities
yum install -y tar
yum install -y wget
yum install -y mercurial
yum install -y gcc gcc-c++ autoconf automake make

wget -O get-pip.py https://bootstrap.pypa.io/get-pip.py
python get-pip.py

