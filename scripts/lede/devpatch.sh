#!/bin/bash

#删除feeds中自带的smartdns
rm -rf ./feeds/packages/net/smartdns

#克隆插件
rm -rf feeds/ssrp/ipt2socks

git clone -b packages https://github.com/xiaorouji/openwrt-passwall.git package/pwpage

mkdir package/small
pushd package/small
#adguardhome
git clone -b main https://github.com/XiaoBinin/luci-app-adguardhome.git
#smartdns
git clone -b lede --depth 1 https://github.com/pymumu/luci-app-smartdns.git
git clone -b master https://github.com/pymumu/smartdns.git
#ssrp
#git clone -b master https://github.com/fw876/helloworld.git
#passwall
git clone -b luci --depth 1 https://github.com/xiaorouji/openwrt-passwall.git
#passwall2
git clone -b main https://github.com/xiaorouji/openwrt-passwall2.git
#mosdns
git clone -b v5 --depth 1 https://github.com/sbwml/luci-app-mosdns.git
#openclash
git clone -b master --depth 1 https://github.com/vernesong/OpenClash.git

popd
