#!/bin/sh
set -e
cd /usr/src/lunatik-#MODULE_VERSION#/
make scripts_install
make ebpf
make ebpf_install
make btf_install
