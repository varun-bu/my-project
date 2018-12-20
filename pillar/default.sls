default: 'mysql'
db_pass: 'password'
db_name: 'wordpress'
db_username: 'wordpressuser'
db_host: 'localhost'
refresh: 'FLUSH PRIVILEGES'
path: '/home/mis/mis_user_credentials.txt'
connection_file: '/etc/mysql/debian.cnf'

mysql-server:
  - mysql-client
  - mysql-server: 5.7.24-0ubuntu0.18.04.1
