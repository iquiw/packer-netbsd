#! /bin/sh

usage()
{
	echo "usage: $0 (amd64|i386)" 1>&2
	exit 1
}

case $# in
esac

case $1 in
amd64)	arch=amd64 ;;
i386)	arch=i386 ;;
*)	echo "Unknown arch: $1" 1>&2
	usage
	;;
esac

packer build -var-file "vars-$arch.json" netbsd.json
