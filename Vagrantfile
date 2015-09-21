# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/trusty64'

  config.vm.network :private_network, ip: '172.16.2.10'
  config.vm.synced_folder "data", "/home/vagrant/data"

  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--memory', 4096, '--cpus', '2']
  end

  config.vm.provision :chef_client do |chef|
    chef.node_name = 'zuero'
    chef.chef_server_url = "https://api.opscode.com/organizations/gesteves-ac"
    chef.validation_key_path = "./.chef/gesteves-ac-validator.pem"
    chef.validation_client_name = 'gesteves-ac-validator'
    #chef.version = "12.4.0"
    # Remove the chef server nodes
    chef.delete_node = true
    chef.delete_client = true
  end
end
