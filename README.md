# NixOS on MacBook Air 2015 (discontinued, new repo because new device)

NixOS-configuration for **MacBook Air (2015, Intel i7, 8 GB RAM)**, with [Nix Flakes](https://nixos.wiki/wiki/Flakes). Most Packages relevant for my Computer Science mandatory modules
## structure

| file | purpose |
|---|---|
| `flake.nix` | bind all Module together |
| `configuration.nix` | main System (Desktop, User, Packages, Locale, Fonts) |
| `hardware-configuration.nix` | automatic hardware detection (filesystem, Kernel-Module) |
| `macbook.nix` | MacBook specific drivers(Broadcom-Wifi-Driver, Air Control) |
| `jupyter.nix` |  JupyterLab-Setup with Python-Packages |

## Overview

- **Desktop-environment:** KDE Plasma 6.7 (via SDDM)
- **Shell:** Zsh with Oh My Zsh and Powerlevel10k-Theme
- **Audio:** PipeWire (instead PulseAudio)
- **Disk encryption:** LUKS
- **Wifi:** Broadcom-Driver (`broadcom-sta`
- **Air Control:** `mbpfan` for Apple-Hardware
- **Browser:** Firefox & LibreWolf
- **more Software:** see file
- **Optional:** JupyterLab-environment with NumPy, Pandas, Matplotlib and SciPy in jupyter.nix file

## How to use

1. clone Repository with: 
```git clone git@github.com:ChieHo/NixOS-Macbook-Air-2025.git``` 
2. customize, (Hostname, timezone, username, packages(``Nixos search Packages: https://search.nixos.org/packages?channel=26.05``)
3. update system:
   ```bash
   sudo nixos-rebuild switch --flake .#nixos
   ```
   or for zsh:
   
   ```zsh
   sudo nixos-rebuild switch --flake ".#nixos"
   ```
  
## Notes
- `hardware-configuration.nix` is generated automatic from `nixos-generate-config` and  **don't** do manual configuration
