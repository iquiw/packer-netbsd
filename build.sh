#! /bin/sh

case $1 in
i386)	arch=i386
	iso_url=https://cdn.netbsd.org/pub/NetBSD/images/8.0_RC1/NetBSD-8.0_RC1-i386.iso
	iso_checksum=a3fd31c5247ed6fcae9edea0cb9d64244344d3f40c608a530addebb574f17a878b78e3dfa51338535cdcdf56a188084445484e92bd6aa21fb19503552a2c6251
	;;
amd64)	arch=amd64
	iso_url=https://cdn.netbsd.org/pub/NetBSD/images/8.0_RC1/NetBSD-8.0_RC1-amd64.iso
	iso_checksum=3374101d74ae5d1d532e8f5cadc4eb4f66f0f29cf1b25a4d90806924f9ee92ba9830bcbcb3fe2d202b1377bcf464c413a20f788a3fb72d7577aa403b69586e3b
	;;
*)	echo "Unknown arch: $1"
	exit 1
	;;
esac

packer build -var iso_url=$iso_url iso_checksum=$iso_checksum netbsd.json
