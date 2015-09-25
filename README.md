# SatNOGS client provisioning

Ansible playbook to make the installation procedure for SatNOGS client easier.
How to install:

* Make sure SatNOGS rotator is connected.
* Configure your `hosts` file to include the rotator's IP under `satnogs`.
* Change `group_vars/satnogs.yml` according to your configuration.