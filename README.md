# nodejs-mysql-basebox

### Source code for my Server4001/nodejs-mysql Vagrant box

**NOTE:** This is the environment used to build the Vagrant box. If you are looking for a Node.js environment, just use the box: [server4001/nodejs-mysql-centos](https://app.vagrantup.com/server4001/boxes/nodejs-mysql-centos).

### Versions

* TODO : THIS.

### Instructions

* `vagrant up`
* Make any changes you need to the box by changing the Ansible provisioner.
* Before packaging up the box, ssh in, and run the following commands:
```bash
sudo yum clean all
sudo dd if=/dev/zero of=/bigemptyfile bs=1M
sudo rm -rf /bigemptyfile
sudo su
history -c && exit
cat /dev/null > ~/.bash_history && history -c && exit
```
* Package up the box with `vagrant package --output nodejs-mysql-centos-0.1.0.box`. Replace `0.1.0` with the version number.
* Destroy the vm with `vagrant destroy --force`.
* Add the new box to vagrant's local list with: `vagrant box add nodejs-mysql-centos-010 nodejs-mysql-centos-0.1.0.box`. Again, replace `010` and `0.1.0` with the version number.
* Delete the `.vagrant` folder with `rm -rf .vagrant`.
* Test out the box by going to a different folder, running `vagrant init nodejs-mysql-centos-010`, and changing the `Vagrantfile` to fit your needs. Next, run `vagrant up`, and ensure everything is working.
* Create a new version on [Vagrant Cloud](https://app.vagrantup.com/).
* Add a new provider to the version. The type should be `virtualbox`. Upload the `.box` file output by the `vagrant package` command above.
* Commit your changes to git.
* Create a new git tag: `git tag 0.1.0 && git push origin 0.1.0`.

### TODO

* Everything.
