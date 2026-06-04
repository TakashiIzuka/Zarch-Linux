# 🚀 Zarch-Linux

![Arch Linux Based](https://img.shields.io/badge/Based_on-Arch_Linux-1793d1?style=for-the-badge&logo=arch-linux)
![Status](https://img.shields.io/badge/Status-Alpha-red?style=for-the-badge)

Welcome to the official repository for **Zarch-Linux**, a custom, performance-focused Linux distribution built on top of Arch Linux. This project contains the `archiso` (releng) profile used to generate the live bootable ISO.

> ⚠️ **WARNING: ALPHA STATE**
> Zarch-Linux is currently in its **Alpha** phase of development. It is highly experimental and meant primarily for testing, debugging, and development purposes. Please do not use this as your daily driver yet, as you may encounter unexpected bugs or system instability. 

## ✨ Features (Current & Planned)
* **Solid Foundation:** Built completely from scratch using Arch Linux base packages.
* **Modern Interface:** Shipped with KDE Plasma for a beautiful, responsive, and highly customizable desktop environment.
* **Easy Installation:** Powered by the Calamares framework for a smooth graphical installation experience.
* **Custom Repositories:** Pre-configured with custom kernels and essential firmware via GitHub Releases.

--
## 🛠️ Build Instructions

> 🚨 **IMPORTANT PREREQUISITE**
> You **MUST** have the `archiso` package installed on your Arch Linux host system before attempting to build. The build process relies entirely on this tool and will fail without it. 
> To install it, run: 
> ```bash
> sudo pacman -S archiso
> ```

### 1. Clone this repository
First, grab the source code from GitHub:
```bash
git clone [https://github.com/TakashiIzuka/Zarch-Linux.git](https://github.com/TakashiIzuka/Zarch-Linux.git)
cd Zarch-Linux
```

### 2. Understand the Directory Structure (Tutorial)
Before proceeding, it's helpful to understand how this `archiso` profile is structured. This will help you know where to put your custom files:
* **`airootfs/`** : This acts as the root (`/`) directory for the live environment. Any files or folders you place here (like custom configs in `/etc` or themes in `/usr`) will be copied directly into the live ISO.
* **`packages.x86_64`** : A text file containing the exact list of all packages that will be downloaded and installed into the ISO.
* **`pacman.conf`** : The specific pacman configuration used during the build process. This is where custom repositories are defined.
* **`profiledef.sh`** : The core configuration script that defines the ISO name, version, file permissions, and boot modes.
* **`customize_airootfs.sh`** : A script executed in a chroot environment during the build to set up users, enable services, and apply final system tweaks.

### 3. Prepare the build environment
It is highly recommended to clean any previous build directories to ensure a fresh, error-free build process.
```bash
sudo rm -rf work/ out/
```

### 4. Build the ISO
Run the `mkarchiso` command to start generating the Zarch-Linux ISO. This will download all packages and compress the filesystem. *(Requires root privileges)*.
```bash
sudo mkarchiso -v -w ./work -o ./out .
```

*Note: The building process will take some time depending on your internet speed and CPU cores. Once the terminal displays `Done!`, your bootable `.iso` file will be waiting for you inside the `out/` directory.*

---

## 👨‍💻 Author
* **Takashi Izuka** - *Lead Developer*

---
*Built with ❤️ and countless cups of coffee/milk.*