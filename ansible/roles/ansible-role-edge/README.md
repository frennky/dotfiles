Microsoft Edge Install
======================

This role installs Microsoft Edge on local system.

Requirements
------------

None.

Role Variables
--------------

This role contains several defaults that can be overridden:

- `edge_pgp_url`: Repository PGP key URL
- `edge_pgp_path`: Local path for repository key
- `edge_arch`: Target architecture
- `edge_repo_url`: Repository URL
- `edge_repo`: Repository name
- `edge_package`: Package name

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
    - ansible-role-edge
```

License
-------

MIT

Author Information
------------------

Created by [frennky](https://github.com/frennky).
