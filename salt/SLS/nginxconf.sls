deploy config nginx_default config file:
  file.managed:
    - name: /etc/nginx/sites-available/default
    - source: salt://nginx/default
