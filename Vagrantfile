# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  config.vm.network "forwarded_port", guest: 5000, host: 5000
  config.vm.provision "docker" do |d|
    d.run "227500/flask-demo:latest",
      args: "-p 5000:5000"
    d.run "containrrr/watchtower",
      args: "-d --name watchtower -v /var/run/docker.sock:/var/run/docker.sock",
      cmd: "-i 40"
  config.vm.provision "ansible" do |ansible|
    ansible.limit = "all"
    ansible.playbook = "playbook.yml"
    end
  end
end

