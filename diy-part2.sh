#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Rubah versi kernel
sed -i 's/KERNEL_PATCHVER:=5.15/KERNEL_PATCHVER:=6.1/g' target/linux/x86/Makefile

# Misalnya, untuk mengubah zona waktu menjadi 'WIB-7'
sed -i '/^system\.@system\[0\]\.timezone/c\set system.@system[0].timezone='WIB-7'' package/base-files/files/bin/config_generate

# Menghapus konfigurasi sistem NTP yang ada
sed -i '/^delete system.ntp/c\delete system.ntp' package/base-files/files/bin/config_generate

# Menambahkan konfigurasi sistem NTP baru
sed -i '/^set system.ntp/c\set system.ntp='timeserver'' package/base-files/files/bin/config_generate
sed -i '/^set system.ntp.enabled/c\set system.ntp.enabled='1'' package/base-files/files/bin/config_generate
sed -i '/^add_list system.ntp.server/c\add_list system.ntp.server='0.id.pool.ntp.org'' package/base-files/files/bin/config_generate
sed -i '/^add_list system.ntp.server/c\add_list system.ntp.server='1.id.pool.ntp.org'' package/base-files/files/bin/config_generate
sed -i '/^add_list system.ntp.server/c\add_list system.ntp.server='2.id.pool.ntp.org'' package/base-files/files/bin/config_generate
sed -i '/^add_list system.ntp.server/c\add_list system.ntp.server='3.id.pool.ntp.org'' package/base-files/files/bin/config_generate


# Modify default IP
# sed -i 's/192.168.1.1/192.168.10.100/g' package/base-files/files/bin/config_generate
