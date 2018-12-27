root_password_enable:
  mysql_query.run:
    - database: mysql
    - query: "UPDATE user SET authentication_string=PASSWORD('root') where User='root';"
    - connection_default_file: '{{ pillar['connection_file'] }}'

root_password_update:
  mysql_query.run:
    - database: mysql
    - query: "UPDATE mysql.user SET plugin = 'mysql_native_password' WHERE user = 'root' AND host ='%';"
    - connection_default_file: '{{ pillar['connection_file'] }}'