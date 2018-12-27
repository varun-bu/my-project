{% set usr_create = pillar.get('USER_LIST', {}) %}

{% for usr in usr_create %}

user_create_{{ usr }}:
  postgres_user.present:
    - name: {{ usr }}
    - password: {{ pillar['USER_LIST'][usr]['password'] }}
    - createdb: {{ pillar['USER_LIST'][usr]['createdb'] }}
    - createuser: {{ pillar['USER_LIST'][usr]['createuser'] }}
    - login: {{ pillar['USER_LIST'][usr]['login'] }}

{% endfor %}