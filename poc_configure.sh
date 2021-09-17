#!/bin/bash
set -eou pipefail

if [[ -z $(docker container ls -f name=cli | grep cli) ]]; then
    echo "No Conjur CLI container found."
    exit 1
fi

sudo docker cp conjur-cli:/root/.conjurrc /etc/conjur.conf
sudo chmod 644 /etc/conjur.conf
sudo docker cp conjur-cli:/root/.netrc /etc/conjur.identity
sudo chmod 444 /etc/conjur.identity

echo "Host identity has been configured."
echo "Please run the following commands:"
echo "#################################################"
echo "ansible-galaxy collection install cyberark.conjur"
echo "ansible-playbook -i localhost poc_conjur.yml"
echo "#################################################"
echo ""