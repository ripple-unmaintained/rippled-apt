#
# Regular cron jobs for the rippled package
#
0 4	* * *	root	[ -x /usr/bin/rippled_maintenance ] && /usr/bin/rippled_maintenance
