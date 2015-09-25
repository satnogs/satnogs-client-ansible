# SatNOGS client provisioning

Ansible playbook to make the installation procedure for SatNOGS client easier.
How to install:

* Make sure SatNOGS rotator is connected to your board.
* Configure your `hosts` file
 * Append the rotator's IP under `satnogs` group.
 * Make sure `ansible_ssh_user` and `ansible_ssh_pass` are defined.
 * Make sure `ansible_ssh_user` has root privileges.
* Change `group_vars/satnogs.yml` according to your setup.
 * Check `group_vars/satnogs.yml-dist` for more information.
* Run `ansible-playbook playbook.yml -i <hosts_inventory>`
* Enjoy!
