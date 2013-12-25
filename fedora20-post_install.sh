# Update the packages first and install the GPG keys
yum -y update

rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-20.noarch.rpm
rpm -ivh http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-20.noarch.rpm

