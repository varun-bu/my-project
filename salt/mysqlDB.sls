mysql_database:
  pkg.installed:
    - pkgs:
      - mysql-client
      - mysql-server

mis_user_credentials:
  mysql_query.run:
    - database: wp
    - query: "GRANT ALL PRIVILEGES ON wp.* TO 'mis'@'localhost' IDENTIFIED BY 'Code@mispl';"
    - output: "/home/mis/mis_user_credentials.txt"
    - connection_default_file: '/etc/mysql/debian.cnf'