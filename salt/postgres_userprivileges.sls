{% set user_cred = pillar.get('USER_PRIVILEGES', {}) %}

{% for user in user_cred %}

user_credentials_{{ user }}:
  postgres_privileges.present:
    - name: {{ user }}
    - object_name: {{ pillar['USER_PRIVILEGES'][user]['object_name'] }}
    - object_type: {{ pillar['USER_PRIVILEGES'][user]['object_type'] }}
    - privileges:
{% for x in pillar['USER_PRIVILEGES'][user]['privileges'] %}
        - {{ x }}
{% endfor %}
    - grant_option: {{ pillar['USER_PRIVILEGES'][user]['grant_option'] }}
    - maintenance_db: {{ pillar['USER_PRIVILEGES'][user]['maintenance_db'] }}
{% endfor %}