# Lunatik Packaging

This repository contains the Debian packaging files for **Lunatik** — the kernel Lua scripting framework.

## Contents

- `debian/` directory with all packaging metadata and scripts
- DKMS configuration files for building kernel modules dynamically
- Post-install and helper scripts used during package installation
- Debian changelog, rules, control files, and other packaging assets

## Submodule Integration with Lunatik
This repository is intended to be used as a Git submodule within the main Lunatik repository.

To clone the main Lunatik repository along with this packaging submodule:

```
git clone --recurse-submodules https://github.com/luainkernel/lunatik.git
```

If you've already cloned Lunatik without submodules:

```
git submodule update --init --recursive
```

## Building the Debian Package

Because Debian packaging tools expect the debian/ directory to be at the root, you must first symlink the packaging directory:

```
ln -s lunatik_packages/debian ./debian
```

Then run the build command:

```bash
dpkg-buildpackage -us -uc
```