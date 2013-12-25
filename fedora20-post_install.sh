# Update the packages first and install the GPG keys
yum -y update

rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-20.noarch.rpm
rpm -ivh http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-20.noarch.rpm

# Install VLC - for watching videos without worrying about the file formats
yum -y install vlc

# Install Azureus - for downloading torrents
yum -y install azureus

# Install p7zip - for operating with the 7z file archiving format
yum -y install p7zip

# Install Filezilla - for transferring files between machines
yum -y install filezilla

# Install Unrar - for extracting RAR file archives
yum -y install unrar

# Install Grip - CD-ripper with database lookup/submission to share track information over the net, supports OGG and FLAC and adding ID3v1/v2 to MP3s.
yum -y install grip

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

# Create startup links for Apache, so that Apache starts automatically whenever the system boots
systemctl enable httpd.service

# Start Apache
systemctl start httpd.service

# Install MySQL/MariaDB
sudo yum -y install mysql mysql-server
systemctl start mysqld.service ## use restart after update

# Node JS
sudo yum -y install nodejs

# Vim
sudo yum -y install vim

# JavaHL
sudo yum -y install subversion-javahl
