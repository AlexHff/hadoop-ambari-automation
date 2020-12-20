#!/usr/bin/env bash

ansible-playbook "playbooks/install_cluster.yml" \
                 --inventory="inventory/static" \
                 --extra-vars="cloud_name=static" \
                 "$@"
