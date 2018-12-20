create_motd_file:
  file.managed:
    - name: /etc/mot #destination_file
    - source: salt://motd/files/motd
    - user: root
    - group: root

    add-apt-repository ppa:nginx/stable
    deb http://nginx.org/packages/mainline/ubuntu/ '$(lsb_release -cs)' nginx'