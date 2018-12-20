/etc/nginx/sites-available/default:
  file.managed:
    - source: salt://nginx/default


restart_nginx:
  cmd.run:
    - name: sudo service nginx restart
