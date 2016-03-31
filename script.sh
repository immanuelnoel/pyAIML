sudo apt-get update

# Install Apache 
sudo apt-get install -y apache2

# Python dependencies - Rest of the dependencies are managed within the VirtualEnv
sudo apt-get install -y python-pip python-dev python3-pip python3-dev build-essential apache2-dev apache2-threaded-dev
sudo pip install --upgrade pip 
sudo pip install --upgrade virtualenv

# Remove default ModWSGI, and install ModWSGI 4.x for Apache 2.4.x and Python 3.x
sudo apt-get remove -y libapache2-mod-wsgi-py3
sudo pip install mod_wsgi

# Database - MySQL
# Need to manually run since MySQL installation throws prompts
# sudo apt-get install mysql-server
sudo apt-get install libmysqlclient-dev