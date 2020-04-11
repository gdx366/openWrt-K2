#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

./scripts/feeds clean


# Add luci-app-vssr
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lean/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr.git package/lean/luci-app-vssr

# Add appfilter
#git clone https://github.com/destan19/OpenAppFilter/tree/master/luci-app-oaf.git package/luci-app-oaf
#git clone https://github.com/destan19/OpenAppFilter/tree/master/oaf.git package/oaf
#git clone https://github.com/destan19/OpenAppFilter/tree/master/open-app-filter.git package/open-app-filter

./scripts/feeds update -a
./scripts/feeds install -a
