php_package:
  pkg.installed:
    - pkgs:
      - php7.2-fpm
      - php-mysql

{{ pillar['PHP_version'] }}:
  service.running:
    - enable: True
    - reload: True

configfile_manage:
   file.managed:
     - name: /etc/nginx/sites-available/default
     - source: salt://default

{{ pillar['service'] }}:
  service.running:
    - enable: True
    - reload: True