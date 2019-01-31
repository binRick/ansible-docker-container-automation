#!/bin/bash
ansible-playbook --version >/dev/null 2>&1 || pip install ansible --user --upgrade --force || exit 1
ansible-playbook playbooks/install.yaml $@ || exit 1
