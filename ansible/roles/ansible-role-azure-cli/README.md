Azure CLI Install
=================

This role installs Azure CLI on local system.

Requirements
------------

None.

Role Variables
--------------

This role contains several defaults that can be overridden:

- `az_cli_key_url`: Repository PGP key URL
- `az_cli_key_path`: Local path for repository key
- `az_cli_arch`: Target architecture
- `az_cli_repo_url`: Repository URL
- `az_cli_repo`: Repository name
- `az_cli_package`: Package name

Dependencies
------------

None.

Example Playbook
----------------

Here is an example of how to use this role:

```yaml
---
- name: Install
  hosts: localhost
  roles:
    - ansible-role-azure-cli
```

License
-------

MIT

Author Information
------------------

Created by [frennky](https://github.com/frennky).
