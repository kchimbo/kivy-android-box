export DEBIAN_FRONTEND=noninteractive

echo "Updating Ubuntu 14.04"
apt-get -qq update && apt-get -qq -y upgrade

echo "Adding kivy PPA"
add-apt-repository -y ppa:kivy-team/kivy
apt-get -qq update

echo "Installing git, python-pip, python-kivy"
apt-get -qq -y install python-pip
apt-get -qq -y install git
apt-get -qq -y install python-kivy

echo "Installing buildozer dependencies for Android (this may take a while)"
dpkg --add-architecture i386
apt-get -qq update
apt-get -y install build-essential 
apt-get -y install ccache 
apt-get -y install lib32stdc++6 
apt-get -y install lib32z1 
apt-get -y install lib32z1-dev
apt-get -y install zlib1g-dev 
apt-get -y install zlib1g:i386 
apt-get -y install openjdk-7-jdk 
apt-get -y install python-dev
apt-get -y install pkg-config
apt-get -y install autoconf
apt-get -qq -y install automake
apt-get -qq -y install libtool
apt-get -qq -y install unzip

echo "Installing Cython"
pip install Cython==0.21
echo "Installing appdirs, jinja2, sh"
pip install appdirs
pip install jinja2
pip install sh
echo "Upgrading colorama"
pip install --upgrade colorama

echo "Installing buildozer"
#git clone https://github.com/kivy/buildozer.git /home/vagrant/buildozer
#cd /home/vagrant/buildozer
#python setup.py install
sudo easy_install buildozer
