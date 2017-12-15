#!/bin/sh

# Install SSH key for ansible-agent
mkdir -m700 /home/ansible-agent/.ssh
mv /tmp/authorized_keys /home/ansible-agent/.ssh/authorized_keys
chmod 0600 /home/ansible-agent/.ssh/authorized_keys
chown -R ansible-agent:ansible-agent /home/ansible-agent/.ssh

# let ansible-agent sudo without password
echo "ansible-agent ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
