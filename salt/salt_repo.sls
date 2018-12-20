salt_key_add:
  cmd.run:
    - name: wget -O - https://repo.saltstack.com/apt/ubuntu/18.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -

salt_repo:
  pkgrepo.managed:
   - name: deb http://repo.saltstack.com/apt/ubuntu/18.04/amd64/latest bionic main
   - file: /etc/apt/sources.list.d/saltstack.list


