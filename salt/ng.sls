nginx_install:
  pkg.installed:
    - name: {{ pillar['nginx_package']['name'] }}
    - version: {{ pillar['nginx_package']['version'] }}

