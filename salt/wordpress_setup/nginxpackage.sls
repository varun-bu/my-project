nginx_repo:
  pkgrepo.managed:
    - name: {{ pillar['nginx_repo_source'] }}
    - file: /etc/apt/sources.list.d/nginx-ubuntu-stable-bionic.list

nginx_package:
  pkg.installed:
    - pkgs:
        - nginx: 1.14

nginx_config_file:
  file.managed:
    - name: /etc/nginx/nginx.conf
    - source: salt://nginx/nginx.conf

{{ pillar['service'] }}:
  service.running:
    - enable: True
    - reload: True