Kubectl Install
===============

This role installs Kubectl on local system.

Requirements
------------

None.

Role Variables
--------------

This role contains several defaults that can be overridden:

- `kubectl_key_url`: Repository PGP key URL
- `kubectl_key_path`: Local path for repository key
- `kubectl_repo_url`: Repository URL
- `kubectl_repo`: Repository name
- `kubectl_package`: Package name

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
    - ansible-role-kubectl
```

License
-------

MIT

Author Information
------------------

Created by [frennky](https://github.com/frennky).
