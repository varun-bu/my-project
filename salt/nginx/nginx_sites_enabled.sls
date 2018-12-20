/etc/nginx/sites-enabled/default:
  file.symlink:
    - target: /etc/nginx/sites-available/default
    - require:
        - file: /etc/nginx/sites-available/default
  cmd.run:
    - name: sudo service nginx restart
