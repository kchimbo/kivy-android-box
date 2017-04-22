# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "android-box"
  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"

  config.vm.network "private_network", ip: "192.168.0.10"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "kivy-android"
    vb.memory = "2048"
    vb.cpus = 2
    vb.customize ["modifyvm", :id, "--usb", "on"]
    vb.customize ["usbfilter", "add", "0", "--target", :id, "--name", "android", "--vendorid", "0x18d1"]
  end

  config.vm.provision :shell, path: "bootstrap.sh"
end
