# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "1404" do |trusty|
    trusty.vm.box = "puppetlabs/ubuntu-14.04-64-puppet"
    trusty.vm.network :private_network, ip: "192.168.33.51"
    trusty.vm.hostname = "ubuntu-syncgateway-1404.vagrant.local"
    trusty.vm.provider :virtualbox do |vb|
      vb.memory = 1024
      vb.name = "ubuntu-syncgateway-1404"
    end
  end
  config.vm.define "1204" do |precise|
    precise.vm.box = "puppetlabs/ubuntu-12.04-64-puppet"
    precise.vm.network :private_network, ip: "192.168.33.52"
    precise.vm.hostname = "ubuntu-syncgateway-1204.vagrant.local"
    precise.vm.provider :virtualbox do |vb|
      vb.memory = 1024
      vb.name = "ubuntu-syncgateway-1204"
    end
  end
  config.vm.define "1004" do |lucid|
    lucid.vm.box = "puppetlabs/ubuntu-10.04-64-puppet"
    lucid.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-10044-x64-vbox4210.box"
    lucid.vm.network :private_network, ip: "192.168.33.53"
    lucid.vm.hostname = "ubuntu-syncgateway-1004.vagrant.local"
    lucid.vm.provider :virtualbox do |vb|
      vb.memory = 1024
      vb.name = "ubuntu-syncgateway-1004"
    end
  end
  
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "site.pp"
  end
end
