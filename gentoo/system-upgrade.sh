#!/bin/bash

# this file just list commands in order and take advantage of github's syntax highlight
#     and should never be executed
exit

# TODO: maybe I should rewrite things here
# to some more friendly format
# so it can be used by others as well..

# update meta info
emerge-webrsync
# an alternative way:
emerge --sync

# update meta info for all overlays
layman -S

# optional, just fetch all sources so we can compile anywhere even when network is unavailable
emerge -avuDNtf world

# do upgrade
emerge -avuDNt world

# update configurations, if any
dispatch-conf

# update packages that rely on python/perl/haskell ...
python-updater
perl-cleaner --all
haskell-updater
emerge @ocaml-rebuild

# seems `portage` now is smarter to figure out
#   which lib are needed to be preserved,
#   `revdep-rebuild` will have less work to do then.
emerge @preserved-rebuild

# clean out unused softwares
emerge -c

# check & fix links
revdep-rebuild -i
# you can use argument "-i" to ignore old temp files

# occasionally:
# https://www.gentoo.org/proj/en/portage/doc/common-problems.xml
emerge --regen
# still not sure if this works though

# see also: http://wiki.gentoo.org/wiki/Eclean
eclean distfiles

# When gcc has a major update
# see also: https://wiki.gentoo.org/wiki/Upgrading_GCC
gcc-config -l
env-update && source /etc/profile
emerge --oneshot libtool

# if connecting vpn results in an immediate error,
# check if there is something like:
# Plugin /usr/lib64/pppd/2.4.5/nm-pptp-pppd-plugin.so is for pppd version 2.4.6, this is 2.4.7
# appears in the /var/log/messages
# if it does, reinstall net-misc/networkmanager-pptp
