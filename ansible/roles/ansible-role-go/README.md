Go install
==========

This role installs Go on local system.

Requirements
------------

None.

Role Variables
--------------

This role contains several defaults that can be overridden:

- `go_version`: Go binary version
- `go_platform`: Go binary target platform
- `go_arch`: Go binary target architecture
- `go_tarball`: tarball name pattern
- `go_download_url`: full url for download
- `go_checksum`: checksum for Go binary

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
    - ansible-role-go
```

License
-------

MIT

Author Information
------------------

Created by [frennky](https://github.com/frennky).
