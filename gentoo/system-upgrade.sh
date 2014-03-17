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
