Want to get your SatNOG station up and running ASAP? Do the following...
  1. Complete the official [Raspberry Pi Quick Start Guide](https://www.raspberrypi.org/help/quick-start-guide/)
  2. Use [raspi-config](https://www.raspberrypi.org/documentation/configuration/raspi-config.md) to do your typical setup -- we recommend at least changing the password, changing the hostname, and expanding the filesystem; reboot as instructed
  3. Run `wget https://raw.githubusercontent.com/ryanturner/satnogs-client-ansible/master/easy-install.sh -O - | sh` to install SatNOGS client

Role Name
=========

The SatNOGS Client Provisioning role is to install and configure the SatNOGS client.

Requirements
------------

None!

Role Variables
--------------

The following hostvars should be used:
* `SATNOGS_API_TOKEN`
* `SATNOGS_STATION_ID`
* `SATNOGS_STATION_LAT`
* `SATNOGS_STATION_LON`
* `SATNOGS_STATION_ELEV`
* `SATNOGS_PPM_ERROR`; this var is auto-set based on Kalibrate results; if you choose not to run Kalibrate, this needs to be manually defined
* `calibration_band`, which is used for Kalibrate-RTL; values may be GSM850, GSM-R, GSM900, EGSM, DCS, or PCS; US should use GSM850, Euro should use GSM900 most likely; leave undefined to not run Kalibrate

The following have default values but can be changed:
* `SATNOGS_API_URL`
* `SATNOGS_SQLITE_URL`

Dependencies
------------

None!

Example Playbook
----------------

```
- hosts: satnogs
  roles:
    - { role: ryan_turner.satnogs-client-ansible}
```
Executed with `ansible-playbook playbook.yml -i hosts -u pi -k -K -s -vvvv`; hosts has the following:
```
[satnogs]
10.0.7.128 SATNOGS_API_TOKEN=123 SATNOGS_STATION_ID=456
```

License
-------

GPLv2

Author Information
------------------

http://www.satnogs.org/
