apache_sever:
  pkg.installed:
    - pkgs:
        - apache2
        - apache2-utils

apache_enable:
  cmd.run:
    - name: systemctl enable apache2

apache_restart:
  cmd.run:
    - name: systemctl start apache2