{% if grains['os'] =='Ubuntu' %}

postgresql_repo:
  pkgrepo.managed:
    {% if grains['lsb_distrib_release'] == '18.04' %}
    - name: deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main
    - file: /etc/apt/sources.list.d/postgresql-bionic
    {% elif grains['lsb_distrib_release'] == '14.04' %}
    - name: deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main
    - file: /etc/apt/sources.list.d/postgresql-trusty
    {% endif %}

psql_package:
  pkg.installed:
    - pkgs:
        - postgresql-9.6
    - refresh: True

postgresql:
  service.running:
    - reload: True
    - restart: True
{% endif %}
