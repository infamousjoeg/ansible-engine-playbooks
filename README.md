# Ansible Engine Playbooks

[![](https://github.com/infamousjoeg/ansible-engine-playbooks/workflows/Ansible%20Lint/badge.svg)](https://github.com/infamousjoeg/ansible-engine-playbooks/actions?query=workflow%3A%22Ansible+Lint%22)

A collection of my Ansible Engine Playbooks I use in demos.

## CyberArk Conjur Secrets Manager

### Install CyberArk Conjur Collection

`$ ansible-galaxy collection install cyberark.conjur`

### Example conjur_variable Usage

File: [conjur_variable.yml](conjur_variable.yml)

`$ ansible-playbook -i localhost conjur_variable.yml`

### POC conjur_variable Playbook

**NOT TO BE USED IN PRODUCTION**

To be used with: [Conjur-Configurator](https://github.com/CaptainFluffyToes/Conjur-Configurator)

```shell
$ ./poc_configure.sh
$ ansible-playbook -i localhost poc_conjur.yml
```

## CyberArk Central Credential Provider

### Install CyberArk PAS Collection

`$ ansible-galaxy collection install cyberark.pas`

### Example cyberarkpassword Playbook

File: [cyberarkpassword.yml](cyberarkpassword.yml)

`$ ansible-playbook -i localhost cyberarkpassword.yml`

## License

[MIT](LICENSE.md)