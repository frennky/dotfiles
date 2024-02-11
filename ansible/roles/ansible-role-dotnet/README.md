Azure CLI Install
=================

This role installs Dotnet on local system.

Requirements
------------

None.

Role Variables
--------------

This role contains several defaults that can be overridden:

- `dotnet_repo`: repository name
- `dotnet_repo_version`: repository version
- `dotnet_package`: dotnet package name

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
    - ansible-role-dotnet
```

License
-------

MIT

Author Information
------------------

Created by [frennky](https://github.com/frennky).
