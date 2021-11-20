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
#src-git helloworld https://github.com/fw876/helloworld
#这是ssrp插件的最新库地址，只是库名字叫helloworld，包名字其实还是ssrplus这个比，安装好后是界面是shadowsocksR plus + 这个比，千变万化我是你爸...      

#src-git passwall https://github.com/xiaorouji/openwrt-passwall   
#这是passwall插件的最新库地址，库名、包名、菜单名目前统一，之前菜单名是 科学上网、...还有什么名字瞎几把改的我忘了...      

#src-git OpenClash https://github.com/vernesong/OpenClash
#这是openclash插件的最新库地址       

#src-git lienol https://github.com/Lienol/openwrt-package
#这是Lienol的package库，里面有一些lede里没有的包      
# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

echo 'src-git OpenClash https://github.com/vernesong/OpenClash'>>feeds.conf.default
echo 'src-git helloworld https://github.com/fw876/helloworld'>>feeds.conf.default
./scripts/feeds update -a && ./scripts/feeds install -a

# Add a feed source
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# git clone https://github.com/tty228/luci-app-serverchan.git
