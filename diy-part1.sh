#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git emortal https://github.com/scoout/immortalwrt.git' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git' >>feeds.conf.default
echo 'src-git passpackage https://github.com/xiaorouji/openwrt-passwall-packages.git' >>feeds.conf.default
echo 'src-git modemfeed https://github.com/koshev-msk/modemfeed.git' >>feeds.conf.default
echo 'src-git OpenClash https://github.com/vernesong/OpenClash.git' >> feeds.conf.default
echo 'src-git Rooter https://github.com/scoout/ROOterSource2305.git' >>feeds.conf.default
