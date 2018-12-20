wp_zip_file_download:
  archive.extracted:
    - name: /var/www/wordpress
    - source: https://wordpress.org/latest.tar.gz
    - skip_verify: True

directory_permissions:
  file.directory:
    - name: /var/www/wordpress
    - user: www-data
    - group: www-data
    - dir_mode: 755
    - file_mode: 640
    - recurse:
      - user
      - group

config_file_management:
  file.managed:
    - name: /var/www/wordpress/wp-config.php
    - source: salt://website-config.php

nginx:
  service.running:
    - enable: True
    - reload: True