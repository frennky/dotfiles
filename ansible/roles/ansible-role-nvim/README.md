NeoVim install
==============

This role installs NeoVim on local system.

Requirements
------------

None.

Role Variables
--------------

This role contains several defaults that can be overridden:

- `nvim_version`: Nvim binary version
- `nvim_platform`: Nvim binary target platform
- `nvim_arch`: Nvim binary target architecture
- `nvim_tarball`: tarball name pattern
- `nvim_download_url`: full url for download
- `nvim_checksum`: checksum for Nvim binary

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
    - ansible-role-nvim
```

License
-------

MIT

Author Information
------------------

Created by [frennky](https://github.com/frennky).
