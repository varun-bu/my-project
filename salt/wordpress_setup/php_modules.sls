php_package:
  pkg.installed:
    - pkgs:
        - php-fpm
        - php-mysql

php7.2-fpm:
  service.running:
    - enable: True
    - reload: True

configfile_manage:
   file.managed:
     - name: /etc/nginx/sites-available/default
     - source: salt://nginx/default

nginx:
  service.running:
    - enable: True
    - reload: True
