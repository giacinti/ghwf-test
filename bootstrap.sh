#! /bin/sh
mkdir -p /var/lib/rancher/rke2/server/manifests
wget -c https://api.preprod.anywhere.navify.com/cilium/install-rke2 -O /var/lib/rancher/rke2/server/manifests/cilium-install.yaml
 curl -fL https://rancher.dev-phi-06.staging.anywhere.navify.com/system-agent-install.sh | sudo  sh -s - --server https://rancher.dev-phi-06.staging.anywhere.navify.com --label 'cattle.io/os=linux' --token rrh9trkh4ndcdkcg8llpfz2h27hnv8rbm24z658km86tpc24pn466p --etcd --controlplane --worker

