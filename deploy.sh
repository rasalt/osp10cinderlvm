#openstack overcloud deploy --templates -e /home/stack/templates/advanced-networking.yaml   --compute-flavor compute --control-flavor control --compute-scale 1 --control-scale 1 --ceph-storage-scale 0 --neutron-network-type vxlan --neutron-tunnel-types vxlan --ntp-server pool.ntp.org

#Cinder backend on /dev/sdb

openstack overcloud deploy --templates -e /home/stack/templates/advanced-networking.yaml  -e /home/stack/templates/1-controller.yaml -e /home/stack/templates/cinderlvm.yaml --compute-flavor compute --control-flavor control --compute-scale 1 --control-scale 1 --ceph-storage-scale 0 --neutron-network-type vxlan --neutron-tunnel-types vxlan --ntp-server pool.ntp.org
