mysql_database:
  pkg.installed:
    - pkgs:
    {% for pkg in {{ pillar['mysql-server'] }} %}
        - { pkg }
    {% endfor %}

database_create:
  mysql_query.run:
    - database: {{ pillar['default_db'] }}
    - query: "CREATE DATABASE {{ pillar['db_name'] }};"
    - connection_default_file: '{{ pillar['connection_file'] }}'

create_local_user:
  mysql_user.present:
    - name: "{{ pillar['db_username'] }}"
    - host: "db_host"
    - password: "{{ pillar['db_pass'] }}"
    - connection_default_file: '{{ pillar['connection_file'] }}'

wordpress_user_credentials:
  mysql_query.run:
    - database: {{ pillar['default_db'] }}
    - query: "GRANT ALL PRIVILEGES ON {{ pillar['db_name'] }}.* TO '{{ pillar['db_username'] }}'@'{{ pillar['db_host'] }}' IDENTIFIED BY '{{ pillar['db_pass'] }}';"
    - output: "{{ pillar['path'] }}"
    - connection_default_file: '{{ pillar['connection_file'] }}'

flush_mysql_privileges:
  mysql_query.run:
    - database: {{ pillar['default_db'] }}
    - query: "{{ pillar['refresh'] }};"
    - connection_default_file: '{{ pillar['connection_file'] }}'