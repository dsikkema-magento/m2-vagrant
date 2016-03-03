# Magento 2, LAMP on vagrant

## Plugin dependencies
[Vagrant Plugins](https://www.vagrantup.com/docs/plugins/usage.html)
 * vagrant-berkshelf (4.1.0)
 * vagrant-hostmanager (1.6.1)
 * vagrant-hostsupdater (1.0.1)
 * vagrant-omnibus (1.4.1)
 * vagrant-share (1.1.4, system)
 * vagrant-vbox-snapshot (0.0.9)

## Start the vagrant box

1. place ce repo in "m2" and ee in "m2ee" in the root of this repo. Those files will be ignored by this git repository, and (like all other files in this repository) will map to "/vagrant/m2" and "/vagrant/m2ee".
2. run "vagrant up"
3. run "vagrant ssh"
 

## Run Magento CE

1. Once in the vagrant box, go to "/vagrant/m2" and enter 'composer install'
2. Run "installm2" (which is an alias to install magento described in .bash\_aliases) to install the application.

Visit m2.dev in your host machine to browse magento. The backend is m2.dev/backend.

admin login:
admin
password1

## Run Magento EE

1. go to /vagrant/m2
2. set up database like in CE (or use same one!)
3. run `m2relink` (an alias for the symlinking script) to define symlinks inside vagrant to the EE codebase
4. `cp /vagrant/m2ee/composer.lock /vagrant/m2 && composer install`
5. `installm2`

## INFO
 * MySQL login: root
 * MySQL password: vagrant
