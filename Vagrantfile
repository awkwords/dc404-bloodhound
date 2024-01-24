Vagrant.configure("2") do |config|
  config.vm.define "bloodhound"
  
  config.vm.provider "virtualbox" do |v|
    v.gui = false
    v.check_guest_additions = false
  end

  config.vm.box = "kalilinux/rolling"
  config.vm.box_version = "2023.4.0"


  config.vm.provision "shell",  path: "scripts/provision.sh"
  config.vm.provision "file",   source: "config/neo4j.conf",  destination: "$HOME/etc/neo4j.conf"
  config.vm.provision "shell",  inline: "sudo neo4j restart && sleep 5"
  config.vm.network "public_network"

end