Two files are necessary to be updated when changing timezone:

* link or copy file under `/usr/share/zoneinfo/` to `/etc/localtime`
(e.g. `/usr/share/zoneinfo/America/New_York`)

* update `/etc/timezone` according to the previous step.
(e.g. `echo "America/New_York" >/etc/timezone`)
