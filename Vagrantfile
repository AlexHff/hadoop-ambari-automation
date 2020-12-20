# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "bento/centos-7.4"

  # Fixes changes from https://github.com/mitchellh/vagrant/pull/4707
  config.ssh.insert_key = false

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.

  # CentOS 7.0 x86_64
  #config.vm.box_url = "http://cloud.terry.im/vagrant/oraclelinux-7-x86_64.box"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 2048] # RAM allocated to each VM
  end

  config.vm.provision :shell, :path => "scripts/bootstrap.sh"

  config.vm.define :c7401 do |c7401|
    c7401.vm.network :private_network, ip: "192.168.74.101"
  end

  config.vm.define :c7402 do |c7402|
    c7402.vm.network :private_network, ip: "192.168.74.102"
  end

  config.vm.define :c7403 do |c7403|
    c7403.vm.network :private_network, ip: "192.168.74.103"
  end

  config.vm.define :c7404 do |c7404|
    c7404.vm.network :private_network, ip: "192.168.74.104"
  end

  config.vm.define :c7405 do |c7405|
    c7405.vm.network :private_network, ip: "192.168.74.105"
  end

  config.vm.define :c7406 do |c7406|
    c7406.vm.network :private_network, ip: "192.168.74.106"
  end

  config.vm.define :c7407 do |c7407|
    c7407.vm.network :private_network, ip: "192.168.74.107"
  end

  config.vm.define :c7408 do |c7408|
    c7408.vm.network :private_network, ip: "192.168.74.108"
  end

  config.vm.define :c7409 do |c7409|
    c7409.vm.network :private_network, ip: "192.168.74.109"
  end

  config.vm.define :c7410 do |c7410|
    c7410.vm.network :private_network, ip: "192.168.74.110"
  end

end
