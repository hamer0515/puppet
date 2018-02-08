#!/bin/bash

set -e

REPO_DEB_URL="https://apt.puppetlabs.com/puppetlabs-release-trusty.deb"

#--------------------------------------------------------------------
# NO TUNABLES BELOW THIS POINT
#--------------------------------------------------------------------
if [ "$EUID" -ne "0" ]; then
  echo "This script must be run as root." >&2
  exit 1
fi

# Install the PuppetLabs repo
echo "Configuring PuppetLabs repo..."
repo_deb_path=$(mktemp)
wget --output-document=${repo_deb_path} ${REPO_DEB_URL} 
dpkg -i ${repo_deb_path}
apt-get update

# Install Puppet Server
echo "Installing Puppet..."

apt-get install -y puppetserver

echo "Puppet installed!"
