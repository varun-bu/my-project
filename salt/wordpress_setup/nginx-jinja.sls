{% if grains['os'] =='Ubuntu' %}

nginx_repo:
  pkgrepo.managed:
    {% if grains['lsb_distrib_release'] == '18.04' %}
    - name: deb http://ppa.launchpad.net/nginx/stable/ubuntu bionic main
    - file: /etc/apt/sources.list.d/nginx-ubuntu-stable-bionic.list
    {% elif grains['lsb_distrib_release'] == '14.04' %}
    - name: deb http://nginx.org/packages/mainline/ubuntu/ trusty nginx
    - file: /etc/apt/sources.list.d/nginx-ubuntu-stable-trusty.list
    {% endif %}

nginx:
  pkg.installed:
    {% if grains['lsb_distrib_release'] == '18.04' %}
    - version: 1.14*
    {% elif grains['lsb_distrib_release'] == '14.04' %}
    - version: 1.15*
    {% endif %}
    - refresh: True
  service.running:
    - enable: True
    - restart: True
 {% endif %}