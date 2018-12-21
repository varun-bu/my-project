default_db: 'mysql'
db_pass: 'password'
db_name: 'wordpress'
db_username: 'wordpressuser'
db_host: 'localhost'
refresh: 'FLUSH PRIVILEGES'
path: '/home/mis/mis_user_credentials.txt'
connection_file: '/etc/mysql/debian.cnf'
PHP_version: 'php7.2-fpm'
wp_path: '/var/www/wordpress'
wp_download_source: 'https://wordpress.org/latest.tar.gz'
service: 'nginx'
nginx_repo_source: 'deb http://ppa.launchpad.net/nginx/stable/ubuntu bionic main'

user_list:
  - local
  - backup
  - remote
  - restore