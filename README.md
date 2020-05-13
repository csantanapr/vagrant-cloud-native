# vagrant-cloud-native

## Description
This project contains everything needed to build the cloud-native vagrant box.

It is pre-configured with 2 lightweight kubernetes distributions for local development [minikube](https://minikube.sigs.k8s.io/docs) and [kind](https://kind.sigs.k8s.io).

Box can be found on [Vagrant Cloud](https://app.vagrantup.com/csantanapr/boxes/cloud-native)

## Install

### Prerequisites

* Virtualbox (tested with version 6.0.20)
* Vagrant (tested with version 2.2.9)

### Create VM

1. Create an empty directory
2. Create a Vagrantfile referring the vagrant box, cpu, memory, and disable vagrant sync folder
3. Start VM

Copy and paste the following snippet into your terminal:

```bash
mkdir -p cloud-native
cd cloud-native

cat <<'EOF' >Vagrantfile
Vagrant.configure("2") do |config|
  config.vm.box = "csantanapr/cloud-native"
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 2
    vb.memory = 2048
  end
end
EOF

vagrant up
```

Now login into the running VM
```
vagrant ssh
```

To stop the VM
```
vagrant halt
```

To start the VM again
```
vagrant up
```

### Update VM

You can create new version of the VM:
```
vagrant destroy -f
vagrant box update
vagrant up
```

## Tools

The box resulting is based on the centos/8 box. 
I try to keep the builds up to date with the latest version of this box. 

Kubernetes included:
* kind
* minikube

Tools included:
* ab
* ansible
* appsody
* argocd
* arkade
* aws
* az
* bat
* buildah
* calicoctl
* cloudctl
* docker
* emacs
* gcloud
* git
* gh
* golang
* gradle
* helm
* hey
* htop
* httpie
* ibmcloud
* ibmcloud plugins (cdb, cfee, cos, cr, dev, es, functions, iam, is, ks, oc, resource, schematics, sl, terraform, watson)
* igc
* inlets
* inletsctl
* java
* javac
* jmeter
* jq
* kn
* ko
* kube-ps1
* kubectl
* kubectx
* kubens
* kustomize
* mkisofs
* mongo
* mvn
* mysql
* nano
* node.js
* oc
* odo
* podman
* popeye
* psql
* python
* python3
* s2i
* s3cmd
* serverless
* screens
* skaffold
* skopeo
* solsa
* stern
* terraform
* terraform ibmcloud
* tig
* tkn
* tm
* tmux
* tree
* vegeta
* yq
* zip

## Changelog
You can find the changelog [CHANGELOG.md](CHANGELOG.md)

## License
You can find the license Apache-2.0 [LICENSE](LICENSE)
