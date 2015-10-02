# -*- mode: ruby -*-
# # vi: set ft=ruby :

Vagrant.configure('2') do |config|
    config.vm.hostname = 'acdc-berkshelf'

      config.omnibus.chef_version = :latest

        config.vm.box = 'opscode_ubuntu-14.04'
          config.vm.box_url = 'http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-14.04_chef-provisionerless.box'

            config.vm.provider :virtualbox do |vb|
                  vb.customize ['modifyvm', :id, '--memory', 4072, '--cpus', '1']
                    end

              config.vm.network :private_network, type: 'dhcp'

                config.berkshelf.enabled = true
                config.berkshelf.berksfile_path = "./cookbooks/wrapper/Berksfile" 

                  config.vm.provision :chef_solo do |chef|
                    chef.run_list = [
                            'recipe[yourrecipe::default]'
                                
                    ]
                      end
end
