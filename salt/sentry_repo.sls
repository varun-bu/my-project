redis_intsall:
  cmd.run:
    - name: add-apt-repository ppa:chris-lea/redis-server
    - file: /etc/apt/sources.list.d/

install_package:
  pkg.installed:
    - pkgs:
      - supervisor
      - postgresql