Vagrant.configure("2") do |config|
 config.vm.box = "ubuntu/trusty64"
 config.vm.provision :shell, path: "bootstrap.sh"

 config.vm.network :forwarded_port, host: 8080, guest: 80
 config.vm.network "private_network", ip: "192.123.123.123"
 config.vm.hostname = 'm2.dev'
 config.hostsupdater.aliases = ["m2.store2.dev"]

 config.vm.provider "virtualbox" do |v|
   v.memory = 3072
   v.cpus = 4
   #v.customize ["modifyvm", :id, "â€“natdnshostresolver1", "on"]
   #v.customize ["modifyvm", :id, "â€“natdnsproxy1", "on"]
 end

 #config.vm.synced_folder ".", "/vagrant", type: "rsync", owner: "www-data",
 #  rsync__exclude: [".git/", ".idea/", "var/"]

 config.vm.synced_folder ".", "/vagrant", type: "nfs",
   :linux__nfs_options => ["no_root_squash"], :map_uid => 0, :map_gid => 0
end

