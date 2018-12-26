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

USER_LIST:
  'local':
    password: 'local'
    createdb: True
    createuser: True
    login: True

  backup:
    password: 'backup'
    createdb: False
    createuser: False
    login: True

  restore:
    password: 'restore'
    createdb: True
    createuser: False
    login: True

  remote:
    password: 'remote'
    createdb: False
    createuser: True
    login: True

USER_PRIVILEGES:
  backup:
    object_name: test
    object_type: table
    privileges:
      - SELECT
    grant_option: True
    maintenance_db: testdb

  restore:
    object_name: test
    object_type: table
    privileges:
      - SELECT
      - UPDATE
      - INSERT
    grant_option: True
    maintenance_db: testdb

  remote:
    object_name: test
    object_type: table
    privileges:
      - SELECT
      - UPDATE
    grant_option: True
    maintenance_db: testdb

Remove_grants:
  backup:
    object_name: test
    object_type: table
    privileges:
      - SELECT
    maintenance_db: testdb

  remote:
    object_name: test
    object_type: table
    privileges:
      - SELECT
      - UPDATE
    maintenance_db: testdb

  restore:
    object_name: test
    object_type: table
    privileges:
      - SELECT
      - UPDATE
      - INSERT
    maintenance_db: testdb

sequence_grant:
  backup:
    object_name: test_id_seq
    object_type: sequence
    privileges:
      - SELECT
    maintenance_db: testdb

  restore:
    object_name: test_id_seq
    object_type: sequence
    privileges:
      - SELECT
      - UPDATE
    maintenance_db: testdb

  remote:
    object_name: test_id_seq
    object_type: sequence
    privileges:
      - SELECT
      - UPDATE
    maintenance_db: testdb