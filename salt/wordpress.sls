rsync_service:
  pkg.installed:
    - pkg:
        - rsync

wordpress_package_manager:
  cmd.run:
    - name: wget -c http://wordpress.org/latest.tar.gz

wordpress_extraction:
  cmd.run:
    - name: tar -xzvf latest.tar.gz

rsync_run:
  cmd.run:
    - name: rsync -av wordpress/* /var/www/wordpress/

wordpress_ownership:
  cmd.run:
    - name: chown -R www-data:www-data /var/www/wordpress/

wordpress_modify:
  cmd.run:
    - name: chmod -R 755 /var/www/wordpress/
