#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#sed -i 'src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/adguardhome
cd lede/package/lean/ 
git clone https://github.com/jerrykuku/lua-maxminddb.git
git clone https://github.com/jerrykuku/luci-app-vssr.git
cd lede
./scripts/feeds update -a
./scripts/feeds install -a
