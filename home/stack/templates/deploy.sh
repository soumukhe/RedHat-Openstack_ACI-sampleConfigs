#!/usr/bin/env bash

source ~/stackrc

time openstack overcloud deploy --templates \
-r  /home/stack/templates/aci_roles_data.yaml \
-n /home/stack/templates/network_data.yaml \
-e /home/stack/templates/node-info.yaml \
-e /home/stack/templates/overcloud_images.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/network-environment.yaml \
-e  /home/stack/templates/ciscoaci.yaml \
-e /home/stack/templates/ciscoaci_containers.yaml \
--ntp-server 192.168.24.20 \
--debug

