# distrobox config

this is a distrobox config directory with a distrobox.ini file and scripts to help setup multiple boxes on a machine.

## Setup

The setup is made up of multiple containers used for different scenarios

### System

- description: the system container contains common utilities
- packages:
    - neovim
    - lazygit (using copr dejan/lazygit)
    - jujutsu scm
    - yazi file manager
    - nwg-displays (using copr tofik/nwg-shell)
- exported to host:
    - neovim
    - lazygit
    - jujutsu scm jj
    - yazi file manager

### Development

- description: the development container has all development tools (except for gui IDEs, which will be installed as flatpaks) required for development
- packages:
    - dotnet sdk 10
    - dotnet sdk 11 (latest beta)
    - aspire cli
    - azure function host
    - azure cli
    - golang tools
    - npm
    - typescript
    - python

## Notes

- the idea of this directory is to have a reproducible setup that can be carried over to other machines.
