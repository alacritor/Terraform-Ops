# #!/bin/bash
# # Update and install Apache2
# apt update
# apt install -y apache2

# # Start and enable Apache2
# systemctl start apache2
# systemctl enable apache2

# # GCP Metadata server base URL and header
# METADATA_URL="http://metadata.google.internal/computeMetadata/v1"
# METADATA_FLAVOR_HEADER="Metadata-Flavor: Google"

# # Use curl to fetch instance metadata
# local_ipv4=$(curl -H "${METADATA_FLAVOR_HEADER}" -s "${METADATA_URL}/instance/network-interfaces/0/ip")
# zone=$(curl -H "${METADATA_FLAVOR_HEADER}" -s "${METADATA_URL}/instance/zone")
# project_id=$(curl -H "${METADATA_FLAVOR_HEADER}" -s "${METADATA_URL}/project/project-id")
# network_tags=$(curl -H "${METADATA_FLAVOR_HEADER}" -s "${METADATA_URL}/instance/tags")

# # Create a simple HTML page and include instance details
# cat <<EOF > /var/www/html/index.html
# <html><body>
# <h2>Good googly moogly, that thang is juicy!</h2>
# <h3>Created with a thirst for big booty cuties!</h3>
# <iframe src="https://giphy.com/embed/cRLenFKfxX8zPSvTKK" width="480" height="270" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p><a href="https://giphy.com/gifs/tylerthecreator-tyler-the-creator-tamale-cRLenFKfxX8zPSvTKK">via GIPHY</a></p>
# <iframe src="https://giphy.com/embed/REKRjTf2j6m6Q" width="480" height="270" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p><a href="https://giphy.com/gifs/booty-trampoline-da-REKRjTf2j6m6Q">via GIPHY</a></p>
# <p><b>Instance Name:</b> $(hostname -f)</p>
# <p><b>Instance Private IP Address: </b> $local_ipv4</p>
# <p><b>Zone: </b> $zone</p>
# <p><b>Project ID:</b> $project_id</p>
# <p><b>Network Tags:</b> $network_tags</p>
# </body></html>
# EOF

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>Old Script Above, Refer to New Script Below<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

#!/bin/bash
# Update and install Apache2
apt update
apt install -y apache2

# Start and enable Apache2
systemctl start apache2
systemctl enable apache2

# GCP Metadata server base URL and header
METADATA_URL="http://metadata.google.internal/computeMetadata/v1"
METADATA_FLAVOR_HEADER="Metadata-Flavor: Google"

# Use curl to fetch instance metadata
local_ipv4=$(curl -H "${METADATA_FLAVOR_HEADER}" -s "${METADATA_URL}/instance/network-interfaces/0/ip")
zone=$(curl -H "${METADATA_FLAVOR_HEADER}" -s "${METADATA_URL}/instance/zone")
project_id=$(curl -H "${METADATA_FLAVOR_HEADER}" -s "${METADATA_URL}/project/project-id")
network_tags=$(curl -H "${METADATA_FLAVOR_HEADER}" -s "${METADATA_URL}/instance/tags")

# Create a simple HTML page and include instance details
cat <<EOF > /var/www/html/index.html
<html><body>
<h2>I am ready to leave and never return</h2>
<h3>May my final days be filled with beautiful women and fun company</h3>
<iframe src="https://giphy.com/embed/heFljt16btbFu" width="480" height="322" style="" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p><a href="https://giphy.com/gifs/bikini-weather-heFljt16btbFu">via GIPHY</a></p>
<iframe src="https://giphy.com/embed/9G1lfQf7ibeafXtEqL" width="480" height="271" style="" frameBorder="0" class="giphy-embed" allowFullScreen></iframe><p><a href="https://giphy.com/gifs/rtl5-9G1lfQf7ibeafXtEqL">via GIPHY</a></p>
<p><b>Instance Name:</b> $(hostname -f)</p>
<p><b>Instance Private IP Address: </b> $local_ipv4</p>
<p><b>Zone: </b> $zone</p>
<p><b>Project ID:</b> $project_id</p>
<p><b>Network Tags:</b> $network_tags</p>
</body></html>
EOF

# Restart Apache to serve new file
systemctl restart apache2