#! /bin/sh

usage()
{
	echo "usage: $0 [-qemu] (amd64|i386)" 1>&2
	exit 1
}

case $# in
[12])	;;
*)	usage
	;;
esac

qemu=
if [ "$1" = -qemu ]; then
	qemu=-qemu
	shift
fi

case $1 in
amd64)	arch=amd64 ;;
i386)	arch=i386 ;;
*)	echo "Unknown arch: $1" 1>&2
	usage
	;;
esac

echo packer build -var-file "vars-$arch.json" "netbsd$qemu.json"
