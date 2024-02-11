# dotfiles

This repository contains my dot files, install roles and settings. Installation is done with ansible. To install ansible run:

```bash
pip install --user ansible-core
```

```
.
├── ansible
└── omp
```

To install all just run ansible playbook `install.yml` from ansible dir:

```bash
ansible-playbook install.yml -K
```

Use tags to install specific tools. For example, to install Docker and Azure CLI run:

```bash
ansible-playbook install.yml --tags docker azure-cli -K
```
