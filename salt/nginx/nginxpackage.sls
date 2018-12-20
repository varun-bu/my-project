nginx_repo:
  pkgrepo.managed:
    - name: deb http://ppa.launchpad.net/nginx/stable/ubuntu bionic main
    - file: /etc/apt/sources.list.d/nginx-ubuntu-stable-bionic.list

nginx_package:
  pkg.installed:
    - pkgs:
        - nginx

nginx_config_file:
  file.managed:
    - name: /etc/nginx/nginx.conf
    - source: salt://nginx/nginx.conf

nginx:
  service.running:
    - enable: True
    - reload: True