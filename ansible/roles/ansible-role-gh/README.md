Github CLI Install
==================

This role installs Github CLI on local system.

Requirements
------------

None.

Role Variables
--------------

This role contains several defaults that can be overridden:

- `gh_pgp_url`: Repository PGP key URL
- `gh_pgp_path`: Local path for repository key
- `gh_arch`: Target architecture
- `gh_repo_url`: Repository URL
- `gh_repo`: Repository name
- `gh_package`: Package name

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
    - ansible-role-gh
```

License
-------

MIT

Author Information
------------------

Created by [frennky](https://github.com/frennky).
