#! /bin/sh

set -e

mkdir "$HOME/.ssh"
chmod 700 "$HOME/.ssh"

echo 'nameserver 1.1.1.1' | su root -c '/sbin/resolvconf -a network'

ftp https://raw.githubusercontent.com/hashicorp/vagrant/master/keys/vagrant.pub
mv vagrant.pub "$HOME/.ssh/authorized_keys"
