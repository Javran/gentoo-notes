#!/bin/bash

# this file just list commands in order and take advantage of github's syntax highlight
#     and should never be executed
exit

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

# clean out unused softwares
emerge -c

# check & fix links
revdep-rebuild
