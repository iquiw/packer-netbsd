#! /bin/sh

packer build -var iso_url=https://cdn.netbsd.org/pub/NetBSD/images/8.0_RC1/NetBSD-8.0_RC1-i386.iso \
       netbsd-i386.json
