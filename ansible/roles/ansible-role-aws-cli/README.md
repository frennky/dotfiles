AWS CLI Install
===============

This role installs AWS CLI on local system.

Requirements
------------

None.

Role Variables
--------------

This role contains several defaults that can be overridden:

- `aws_cli_platform`: AWS CLI binary target platform
- `aws_cli_arch`: AWS CLI binary target architecture
- `aws_cli_download_dir`: download directory
- `aws_cli_filename`: archive filename
- `aws_cli_key_name`: GPG key filename
- `aws_cli_key_path`: full path and filename for GPG key

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
    - ansible-role-aws-cli
```

License
-------

MIT

Author Information
------------------

Created by [frennky](https://github.com/frennky).
