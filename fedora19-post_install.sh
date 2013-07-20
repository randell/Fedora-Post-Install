# Update the packages first and install the GPG keys
yum -y update

# Install the free and non-free RPM Fusion repositories
rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm
rpm -ivh http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-stable.noarch.rpm

# Install Google Chrome
rpm -ivh http://dl.google.com/linux/direct/google-chrome-stable_current_i386.rpm

# Install Azureus - for downloading torrents
yum -y install azureus

# Install p7zip - for operating with the 7z file archiving format
yum -y install p7zip

# Install Filezilla - for transferring files between machines
yum -y install filezilla

# Install pgadmin3 - for PostgreSQL database administration
yum -y install pgadmin3

# Install VLC - for watching videos without worrying about the file formats
yum -y install vlc

# Install Unrar - for extracting RAR file archives
yum -y install unrar

# Install Grip - CD-ripper with database lookup/submission to share track information over the net, supports OGG and FLAC and adding ID3v1/v2 to MP3s.
yum -y install grip

# Install Skype
rpm -ivh http://www.skype.com/go/getskype-linux-beta-fc10

# Install PulseCaster - for recording Skype calls
yum -y install pulsecaster

# Alacarte - for creating custom application launchers
yum -y install alacarte

# PHP modules I need for web development
sudo yum -y install php-gd php-mbstring php-pgsql php-xml

# Python modules I need for web development
sudo yum -y install MySQL-python python-twisted python-BeautifulSoup python-simplejson python-ldap python-dateutil python-twisted python-twisted-web2

# MySQL Workbench - for designing MySQL databases visually
sudo yum -y install mysql-workbench

# Install RVM with Ruby and Rails
curl -L https://get.rvm.io | bash -s stable --ruby
curl -L https://get.rvm.io | bash -s stable --rails

# Calibre - For converting e-books to different formats and for managing your e-book collection.
sudo yum -y install calibre

# chmsee - HTML Help viewer for Unix/Linux (for viewing .chm files).
sudo yum -y install chmsee

# Development files for Qt toolkit
sudo yum -y install qt-devel qt-config

# GStreamer non-free plugins
sudo yum -y install gstreamer-plugins-bad gstreamer-plugins-ugly gstreamer-ffmpeg phonon-backend-gstreamer gstreamer-plugins-base

# FFMpeg
sudo yum -y install ffmpeg ffmpeg-libs

# DVD playback
sudo yum -y install libdvdread libdvdnav lsdvd

# Xournal - for note taking ang sketching; I use this to highlight PDFs
sudo yum -y install xournal

# Apache Httpd
sudo yum -y install httpd

# Java
rpm -ivh http://download.oracle.com/otn-pub/java/jdk/7u25-b15/jdk-7u25-linux-i586.rpm
sudo alternatives --install /usr/bin/java java /usr/java/jdk1.7.0_25/jre/bin/java 20000
sudo alternatives --install /usr/lib/mozilla/plugins/libjavaplugin.so libjavaplugin.so /usr/java/jdk1.7.0_25/jre/lib/i386/libnpjp2.so 20000
sudo alternatives --install /usr/bin/javac javac /usr/java/jdk1.7.0_25/bin/javac 20000
sudo alternatives --install /usr/bin/jar jar /usr/java/jdk1.7.0_25/bin/jar 20000

EXPORT_JAVA_HOME='export JAVA_HOME="/usr/java/jdk1.7.0_25/"'
sudo chmod 646 /etc/profile
sudo echo "$EXPORT_JAVA_HOME" >> /etc/profile
sudo chmod 644 /etc/profile

sudo wget -P /etc/yum.repos.d/ http://spot.fedorapeople.org/steam/steam.repo
sudo yum install steam

# JavaHL
sudo yum -y install subversion-javahl

# Add httpd to startup
#chkconfig --add httpd
#systemctl start mysqld.service
#systemctl enable mysqld.service

# Give permission to apache
#usermod -a -G randell apache
#chmod 770 /home/randell/











