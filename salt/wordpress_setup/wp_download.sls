wp_zip_file_download:
  archive.extracted:
    - name: {{ pillar['wp_path'] }}
    - source: {{ pillar['wp_download_source'] }}
    - skip_verify: True

directory_permissions:
  file.directory:
    - name: {{ pillar['wp_path'] }}
    - user: www-data
    - group: www-data
    - dir_mode: 755
    - file_mode: 640
    - recurse:
      - user
      - group

config_file_management:
  file.managed:
    - name: {{ pillar['wp_path'] }}/wp-config.php
    - source: salt://website-config.php

{{ pillar['service'] }}:
  service.running:
    - reload: True