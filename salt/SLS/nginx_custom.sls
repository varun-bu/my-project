custom_conf:
  file.managed:
    - name: /etc/nginx/nginx.conf
    - source: salt://nginx/nginx_cust.conf
