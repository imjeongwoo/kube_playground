# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.define "control-plane" do |config|
    config.vm.box = "ubuntu/bionic64"
	config.vm.provider "virtualbox" do |vb|
	  vb.name = "control-plane"
	  vb.memory = "2048"
	  vb.cpus = 2
    end
    config.vm.hostname = "control-plane.example.com"
    config.vm.network "private_network", ip: "192.168.56.11"
  end

  config.vm.define "node1" do |config|
    config.vm.box = "ubuntu/bionic64"
	config.vm.provider "virtualbox" do |vb|
	  vb.name = "node1"
	  vb.memory = "1536"
	  vb.cpus = 2
    end
    config.vm.hostname = "node1.example.com"
    config.vm.network "private_network", ip: "192.168.56.21"
  end

  config.vm.define "node2" do |config|
    config.vm.box = "ubuntu/bionic64"
	config.vm.provider "virtualbox" do |vb|
	  vb.name = "node2"
	  vb.memory = "1536"
	  vb.cpus = 2
    end
    config.vm.hostname = "node2.example.com"
    config.vm.network "private_network", ip: "192.168.56.22"
  end

  config.vm.define "node3" do |config|
    config.vm.box = "ubuntu/bionic64"
	config.vm.provider "virtualbox" do |vb|
	  vb.name = "node3"
	  vb.memory = "1536"
	  vb.cpus = 2
    end
    config.vm.hostname = "node3.example.com"
    config.vm.network "private_network", ip: "192.168.56.23"
  end
  
  config.hostmanager.enabled = true
  config.hostmanager.manage_guest = true

  config.vm.provision "shell", inline: <<-SHELL
    sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config
