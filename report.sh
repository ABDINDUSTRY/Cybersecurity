mkdir system-report
touch system-report/a.info
touch system-report/b.info
touch system-report/c.info
df -h | grep sda[0-9] >> a.info 2>> a.error

