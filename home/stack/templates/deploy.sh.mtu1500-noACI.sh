time openstack overcloud deploy --templates \
-r  /home/stack/templates/roles_data.yaml \
-e /home/stack/templates/node-info.yaml \
-e /home/stack/templates/overcloud_images.yaml \
-n /home/stack/templates/network_data.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/network-environment.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/net-single-nic-with-vlans.yaml \
--ntp-server 192.168.24.20 \
--libvirt-type qemu \
--debug

