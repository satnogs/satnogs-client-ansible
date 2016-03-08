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
* `SATNOGS_PPM_ERROR`

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
