package_apache:

pkg.installed:

{% if grains['os'] == 'Debian' %}

- name: httpd

{% elif grains['os'] == 'Ubuntu' %}

- name: apache2

{% endif %}

