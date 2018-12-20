pidgin_install:
  cmd.run:
    - name: wget http://security.ubuntu.com/ubuntu/pool/universe/p/pidgin/pidgin_2.12.0-1ubuntu4_amd64.deb

pidgin_repo:
  pkgrepo.managed:
   - name: deb http://ppa.launchpad.net/pidgin-developers/ppa/ubuntu intrepid main
   - file: /etc/apt/sources.list.d/pidgin.list
