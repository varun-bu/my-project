nginx_repo:
  pkgrepo.managed:
    - name: deb http://ppa.launchpad.net/nginx/stable/ubuntu bionic main
    - file: /etc/apt/sources.list.d/nginx-ubuntu-stable-bionic.list