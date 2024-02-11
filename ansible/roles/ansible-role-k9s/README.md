K9s Install
===========

This role installs K9s on local system.

Requirements
------------

None.

Role Variables
--------------

This role contains several defaults that can be overridden:

- `k9s_version`: Package version
- `k9s_arch`: Target architecture
- `k9s_deb_url`: Package URL

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
    - ansible-role-k9s
```

License
-------

MIT

Author Information
------------------

Created by [frennky](https://github.com/frennky).
