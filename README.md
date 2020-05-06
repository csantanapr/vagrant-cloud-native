# vagrant-cloud-native

## Description
This project contains everything needed to build the cloud-native vagrant box.

It is pre-configured with 3 lightweight kubernetes distributions for local development [minikube](https://minikube.sigs.k8s.io/docs), [kind](https://kind.sigs.k8s.io), and [k3s](https://github.com/rancher/k3s) .

Box can be found on [Vagrant Cloud](https://app.vagrantup.com/csantanapr/boxes/cloud-native)

## Install

### Prerequisites

* Virtualbox (tested with version 6.0.20)
* Vagrant (tested with version 2.2.7)

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
  config.vm.provider "virtualbox" do |vbox|
    vbox.cpus = 2
    vbox.memory = 2048
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


## Tools

The box resulting is based on the centos/7 box. 
I try to keep the builds up to date with the latest version of this box. 

Kubernetes included:
* k3s
* kind
* minikube

Tools included:
* ab
* ansible
* appsody
* argocd
* aws
* az
* bat
* buildah
* calicoctl
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
* igc
* java
* javac
* jq
* kn
* kube-ps1
* kubectl
* kubectx
* kubens
* kustomize
* mkisofs
* mvn
* mysql
* nano
* node.js
* oc
* odo
* podman
* python
* python3
* s2i
* screens
* skaffold
* skopeo
* solsa
* stern
* terraform
* terraform ibmcloud
* tig
* tkn
* tmux
* tree
* yq
* zip

## Changelog
You can find the changelog [CHANGELOG.md](CHANGELOG.md)

## License
You can find the license Apache-2.0 [LICENSE](LICENSE)
