#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="Zarch Linux"
iso_label="Zarch_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="Zarch Linux <https://github.com/takashiizuka>"
iso_application="Zarch Linux Live ISO"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux'
           'uefi.systemd-boot')
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')

file_permissions=(
  ["/etc/shadow"]="0:0:600"
  ["/etc/gshadow"]="0:0:600"
  ["/etc/passwd"]="0:0:644"
  ["/etc/group"]="0:0:644"
  ["/etc/mkinitcpio.conf"]="0:0:644"
  ["/etc/sddm.conf.d/autologin.conf"]="0:0:644"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.gnupg"]="0:0:700"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  
  #Script bin after installtion
  ["/usr/local/bin/fix-pacman-keyring"]="0:0:755"
  ["/usr/local/bin/remove-after-installation"]="0:0:755"
  
  ["/etc/polkit-1/rules.d"]="0:0:750"
  ["/etc/sudoers.d"]="0:0:750"
  ["/etc/sudoers.d/grup-izuka"]="0:0:440"
  ["/etc/polkit-1/rules.d/49-nopasswd_global.rules"]="0:0:644"
  ["/etc/skel/Desktop"]="0:0:755"
  ["/etc/skel/Desktop/install.desktop"]="0:0:755"
  ["/usr/share/wallpapers/ZarchLinux/contents/images/1920x1080.png"]="0:0:644"
  ["/root/customize_airootfs.sh"]="0:0:755"
  ["/etc/skel/.config/plasma-org.kde.plasma.desktop-appletsrc"]="0:0:644"
)
