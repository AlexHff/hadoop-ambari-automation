# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "bento/centos-7.4"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # agrant box outdated This is not recommended.
  config.vm.box_check_update = false

  config.ssh.insert_key = false

  config.vm.provision :shell, :path => "bootstrap.sh"

  config.vm.define :c7401 do |c7401|
    c7401.vm.hostname = "c7401.ambari.apache.org"
    c7401.vm.network :private_network, ip: "192.168.74.101"
    c7401.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "4096"]
      vb.customize ["modifyvm", :id, "--cpus", "2"]
    end
  end

  # config.vm.define :c7402 do |c7402|
  #   c7402.vm.hostname = "c7402.ambari.apache.org"
  #   c7402.vm.network :private_network, ip: "192.168.74.102"
  #   c7402.vm.provider :virtualbox do |vb|
  #     vb.customize ["modifyvm", :id, "--memory", "1024"]
  #   end
  # end

  # config.vm.define :c7403 do |c7403|
  #   c7403.vm.hostname = "c7403.ambari.apache.org"
  #   c7403.vm.network :private_network, ip: "192.168.74.103"
  #   c7403.vm.provider :virtualbox do |vb|
  #     vb.customize ["modifyvm", :id, "--memory", "1024"]
  #   end
  # end

  # config.vm.define :c7404 do |c7404|
  #   c7404.vm.hostname = "c7404.ambari.apache.org"
  #   c7404.vm.network :private_network, ip: "192.168.74.104"
  #   c7404.vm.provider :virtualbox do |vb|
  #     vb.customize ["modifyvm", :id, "--memory", "1024"]
  #   end
  # end

end
