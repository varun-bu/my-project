/etc/nginx/nginx.conf:
  file.managed:
    - name: /etc/nginx/nginx.conf
    - source: salt://nginx/nginx.conf
  cmd.run:
    - name: sudo service nginx restart

