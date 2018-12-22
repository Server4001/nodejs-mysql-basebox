# -*- mode: ruby -*-
# vi: set ft=ruby :

hostname_short = 'dev'
vm_hostname = "#{hostname_short}.nodejs-mysql.loc"

Vagrant.require_version ">= 1.8.4"

Vagrant.configure(2) do |config|
  config.vm.box = "bento/centos-6.7"
  config.vm.box_version = "2.2.7"
  config.vm.host_name = "#{vm_hostname}"

  # Install ansible v2.6.
  config.vm.provision :shell, path: "provisioners/ansible.install.sh", privileged: true

  # Install everything else.
  config.vm.provision :ansible_local do |ansible|
    ansible.playbook = "nodejs.yml"
    ansible.provisioning_path = "/vagrant/provisioners/ansible"
    ansible.install = false
    ansible.verbose = true
    ansible.extra_vars = {
      vm_hostname: "#{vm_hostname}",
      vm_short_hostname: "#{hostname_short}",
    }
  end
end

