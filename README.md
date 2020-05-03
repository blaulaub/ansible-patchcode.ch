# About

The is my private collection of Ansible config files. They might be useless to
anybody else, but feel free to read.


# Playbooks

Playbooks are executed calling `ansible-playbook <playbook.yml>`, possibly
with further options to select or restrict hosts or tags. Following playbooks
are included:

| playbook          | meaning                                           |
| ----------------- | ------------------------------------------------- |
| debian-system.yml | Invokes tasks for the roles `debian-9-system` and |
| ^                 | `debian-10-system`-                               |


# Roles

_todo_


# Tags

Tags are executed calling `ansible-playbook -t <tag> <playbook.yml>`. Following
tags are supported:

| tag             | meaning                                            |
| --------------- | -------------------------------------------------- |
| packages-update | Will run the package manager to update the system. |
