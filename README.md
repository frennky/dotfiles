# dotfiles

This repository contains my dot files, install roles and settings. Installation is done with ansible. To install ansible run:

```bash
sudo apt install ansible
```

```
.
├── ansible
└── omp
```

To install all just run ansible playbook `install.yml` from ansible dir:

```bash
ansible-playbook install.yml
```

Use tags to install specific tools. For example, to install Docker and Azure CLI run:

```bash
ansible-playbook install.yml --tags docker azure-cli
```

To skip specific tools, run:

```bash
ansible-playbook install.yml --skip-tags k9s
```
