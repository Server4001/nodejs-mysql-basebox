# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.8.4"

Vagrant.configure(2) do |config|
  config.vm.box = "bento/centos-6.7"
  config.vm.box_version = "2.2.7"

  # Install ansible v2.6.
  config.vm.provision :shell, path: "provisioners/ansible.install.sh", privileged: true

  # Install everything else.
  config.vm.provision :ansible_local do |ansible|
    ansible.playbook = "nodejs.yml"
    ansible.provisioning_path = "/vagrant/provisioners/ansible"
    ansible.install = false
    ansible.verbose = true
  end
end

