Helm Install
============

This role installs Helm on local system.

Requirements
------------

None.

Role Variables
--------------

This role contains several defaults that can be overridden:

- `helm_key_url`: Repository PGP key URL
- `helm_key_path`: Local path for repository key
- `helm_arch`: Target architecture
- `helm_repo_url`: Repository URL
- `helm_repo`: Repository name
- `helm_package`: Package name

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
    - ansible-role-helm
```

License
-------

MIT

Author Information
------------------

Created by [frennky](https://github.com/frennky).
