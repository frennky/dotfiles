Terraform Install
=================

This role installs Terraform on local system.

Requirements
------------

None.

Role Variables
--------------

This role contains several defaults that can be overridden:

- `terraform_key_url`: Repository PGP key URL
- `terraform_key_path`: Local path for repository key
- `terraform_repo_url`: Repository URL
- `terraform_repo`: Repository name
- `terraform_package`: Package name

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
    - ansible-role-terraform
```

License
-------

MIT

Author Information
------------------

Created by [frennky](https://github.com/frennky).
