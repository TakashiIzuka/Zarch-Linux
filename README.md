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

---

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
