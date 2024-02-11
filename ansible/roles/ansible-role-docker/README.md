Docker Install
==============

This role installs Docker on local system.

Requirements
------------

None.

Role Variables
--------------

This role contains several defaults that can be overridden:

- `docker_key_url`: URL of Docker repository key
- `docker_key_path`: Local path for repository key
- `docker_repo_url`: Docker repository URL
- `docker_arch`: Docker target architecture
- `docker_repo`: Docker repository name

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
    - ansible-role-docker
```

License
-------

MIT

Author Information
------------------

Created by [frennky](https://github.com/frennky).
