sudo apt-get update
sudo apt-get install python-pip git -y
sudo pip install ansible markupsafe
cd $(mktemp -d)
git clone https://github.com/ryanturner/satnogs-client-ansible.git
echo "Now, let's find out more about this station..."
echo -n "SatNOGS API URL: "
read SATNOGS_API_URL
echo -n "SatNOGS API Token: "
read SATNOGS_API_TOKEN
echo -n "SatNOGS Station ID: "
read SATNOGS_STATION_ID
echo -n "SatNOGS Station Latitude: "
read SATNOGS_STATION_LAT
echo -n "SatNOGS Station Longitude: "
read SATNOGS_STATION_LON
echo -n "SatNOGS Station Elevation: "
read SATNOGS_STATION_ELEV
echo "[satnogs]
localhost SATNOGS_API_URL=$SATNOGS_API_URL SATNOGS_API_TOKEN=$SATNOGS_API_TOKEN SATNOGS_STATION_ID=$SATNOGS_STATION_ID SATNOGS_STATION_LAT=$SATNOGS_STATION_LAT SATNOGS_STATION_LON=$SATNOGS_STATION_LON SATNOGS_STATION_ELEV=$SATNOGS_STATION_ELEV
" > hosts
echo "- hosts: satnogs
  serial: 1
  become: yes
  roles:
    - { role: satnogs-client-ansible }
" > playbook.yml
ansible-playbook playbook.yml -i hosts --connection=local
rm -rf $(pwd)
