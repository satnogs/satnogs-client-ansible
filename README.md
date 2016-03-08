Role Name
=========

The SatNOGS Client Provisioning role is to install and configure the SatNOGS client.

Requirements
------------

None!

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

None!

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: satnogs-client-ansible
      roles:
         - { role: ryan_turner.satnogs-client-ansible, satnogs_api_url: https://network.satnogs.org/api/, satnogs_api_token: 123, satnogs_station_id: 456, satnogs_station_lat: 35.0, satnogs_station_lon: -89, satnogs_station_elev: 89, satnogs_ppm_error: -2 }

License
-------

BSD

Author Information
------------------

http://www.satnogs.org/
