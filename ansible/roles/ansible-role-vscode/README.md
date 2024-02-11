Visual Studio Code Install
==========================

This role installs Visual Studio Code on local system.

Requirements
------------

None.

Role Variables
--------------

This role contains several defaults that can be overridden:

- `vscode_arch`: Target architecture
- `vscode_deb_url`: Package URL

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
    - ansible-role-vscode
```

License
-------

MIT

Author Information
------------------

Created by [frennky](https://github.com/frennky).
