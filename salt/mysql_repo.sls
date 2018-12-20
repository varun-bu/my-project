mysql_repo:
  cmd.run:
    - name: curl -OL https://dev.mysql.com/get/mysql-apt-config_0.8.3-1_all.deb

mysql-server:
  pkg.installed:
    - version: 5.7.24-0ubuntu0.18.04.1
