# Update the packages first and install the GPG keys
yum -y update

# Install the free and non-free RPM Fusion repositories
rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm
rpm -ivh http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-stable.noarch.rpm

# Dependency for Google Chrome
yum -y install lsb

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

# vsftpd - Secure, fast FTP server
yum -y install vsftpd

# Alacarte - for creating custom application launchers
yum -y install alacarte

# PHP modules I need for web development
sudo yum -y install php-gd php-mbstring php-pgsql php-xml

# Python modules I need for web development
sudo yum -y install MySQL-python

# setuptools for easier Python package management
sudo yum -y install python-setuptools python-setuptools-devel

# MySQL Workbench - for designing MySQL databases visually
sudo yum -y install mysql-workbench

# Calibre - For converting e-books to different formats and for managing your e-book collection.
sudo yum -y install calibre

# chmsee - HTML Help viewer for Unix/Linux (for viewing .chm files).
sudo yum -y install chmsee

# Development files for Qt toolkit
sudo yum -y install qt-devel qt-config

# GStreamer non-free plugins
sudo yum -y install gstreamer-plugins-bad gstreamer-plugins-ugly gstreamer-ffmpeg phonon-backend-gstreamer

# FFMpeg
sudo yum -y install ffmpeg ffmpeg-libs

# DVD playback
sudo yum -y install libdvdread libdvdnav lsdvd

# Java
rpm -ivh http://download.oracle.com/otn-pub/java/jdk/7u1-b08/jdk-7u1-linux-i586.rpm
alternatives --install /usr/bin/java java /usr/java/jdk1.7.0_01/jre/bin/java 20000
alternatives --install /usr/lib/mozilla/plugins/libjavaplugin.so  libjavaplugin.so /usr/java/jdk1.7.0_01/jre/lib/i386/libnpjp2.so 20000
alternatives --install /usr/bin/javac javac /usr/java/jdk1.7.0_01/bin/javac 20000
alternatives --install /usr/bin/jar jar /usr/java/jdk1.7.0_01/bin/jar 20000

EXPORT_JAVA_HOME='export JAVA_HOME="/usr/java/jdk1.7.0_01"'
chmod 646 /etc/profile
echo "$EXPORT_JAVA_HOME" >> /etc/profile
chmod 644 /etc/profile

# Get Aptana
wget http://download.aptana.com/studio3/standalone/3.0.6/linux/Aptana_Studio_3_Setup_Linux_x86_3.0.6.zip
unzip Aptana_Studio_3_Setup_Linux_x86_3.0.6.zip

# JavaHL
yum -y install subversion-javahl

# Add httpd to startup
chkconfig --add httpd
systemctl start mysqld.service
systemctl enable mysqld.service

# Give permission to apache
usermod -a -G randell apache
chmod 770 /home/randell/

# Zend Framework
curl http://framework.zend.com/releases/ZendFramework-1.11.11/ZendFramework-1.11.11.tar.gz | tar xz

# Xournal - for note taking ang sketching; I use this to highlight PDFs
yum -y install xournal









