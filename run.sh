docker cp ./13.0/odoo odoo:/usr/lib/python3/dist-packages
curl -L https://github.com/OCA/fleet/archive/refs/heads/13.0.zip -o fleet.zip
echo "Extracting the module"
unzip fleet.zip
mv -v fleet-13.0/* addons
rm -rf  fleet-13.0 fleet.zip || true
docker-compose restart