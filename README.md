# Magento 2, LAMP on vagrant

1. place ce repo in "m2" and ee in "m2ee" in the root of this repo. Those files will be ignored by this git repository, and (like all other files in this repository) will map to "/vagrant/m2" and "/vagrant/m2ee".

2. run "vagrant up"

3. run "vagrant ssh"

4. go to mysql (user root, password vagrant) and create database "magento."

4. Once in the vagrant box, go to "/vagrant/m2" and enter "rein" (which is an alias to execute reinstall.sh) to install the application.

Visit m2.dev in your host machine to browse magento. The backend is m2.dev/backend.

admin login:
admin
password1
