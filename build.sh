#!/bin/bash

# 打印 info
make info

# 主配置名称
PROFILE="generic"

PACKAGES=""

# Argon 主题
PACKAGES="$PACKAGES luci-theme-argon luci-i18n-argon-config-zh-cn"

# 常用系统管理组件
# CPU 占用限制
PACKAGES="$PACKAGES luci-i18n-cpulimit-zh-cn"
# collectd 统计
PACKAGES="$PACKAGES luci-i18n-statistics-zh-cn"

# 常用软件服务
# upnp
PACKAGES="$PACKAGES luci-i18n-upnp-zh-cn"
# OpenClash 代理
PACKAGES="$PACKAGES luci-app-openclash"
# Passwall 代理
PACKAGES="$PACKAGES luci-i18n-passwall-zh-cn"
# KMS服务
PACKAGES="$PACKAGES luci-i18n-vlmcsd-zh-cn"

# VPN 类
# IPSec VPN
PACKAGES="$PACKAGES luci-i18n-ipsec-vpnd-zh-cn"
# Zerotier
PACKAGES="$PACKAGES luci-i18n-zerotier-zh-cn"

# 网络组件
# ipv6
PACKAGES="$PACKAGES dnsmasq-full ipv6helper 6in4 6rd 6to4"

# EQoS 网速控制
PACKAGES="$PACKAGES luci-i18n-eqos-zh-cn"
# 多线多拨与负载均衡
PACKAGES="$PACKAGES luci-app-syncdial luci-i18n-mwan3-zh-cn"
# 宽带监控 Nlbwmon
PACKAGES="$PACKAGES luci-i18n-nlbwmon-zh-cn"

# 界面翻译补全
PACKAGES="$PACKAGES luci-i18n-opkg-zh-cn luci-i18n-base-zh-cn luci-i18n-firewall-zh-cn"

# Packages 文件夹下的 ipk 包
PACKAGES="$PACKAGES luci-i18n-wrtbwmon-zh-cn"

# 一些自己需要的内核组件
# PACKAGES="$PACKAGES kmod-usb-printer kmod-lp"

# 一些其他可能有用的包
# zsh 终端
PACKAGES="$PACKAGES zsh"
# Vim 完整版，带语法高亮
PACKAGES="$PACKAGES vim-fuller"
# X/Y/ZMODEM 文件传输
PACKAGES="$PACKAGES lrzsz"
# OpenSSH
#PACKAGES="$PACKAGES openssh-server openssh-client"
# Netdata 系统监控界面
PACKAGES="$PACKAGES netdata"

# 一些自定义文件
FILES="files"

# 禁用 openssh-server 的 sshd 服务和 docker 的 dockerd 服务以防止冲突
# DISABLED_SERVICES="sshd dockerd"

make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" DISABLED_SERVICES="$DISABLED_SERVICES"
