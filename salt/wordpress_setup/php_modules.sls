php_package:
  pkg.installed:
    - pkgs:
    {% for pkgs in {{ pillar['php_packages'] }} %}
        - { pkgs }
    {% endfor %}

{{ pillar['PHP_version'] }}:
  service.running:
    - enable: True
    - reload: True

configfile_manage:
   file.managed:
     - name: /etc/nginx/sites-available/default
     - source: salt://nginx/default

{{ pillar['service'] }}:
  service.running:
    - enable: True
    - reload: True