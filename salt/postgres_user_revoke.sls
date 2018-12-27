{% set usr_grant = pillar.get('Remove_grants', {}) %}

{% for user in usr_grant %}

user_credentials_{{ user }}:
  postgres_privileges.absent:
    - name: {{ user }}
    - object_name: {{ pillar['Remove_grants'][user]['object_name'] }}
    - object_type: {{ pillar['Remove_grants'][user]['object_type'] }}
    - privileges:
{% for x in pillar['Remove_grants'][user]['privileges'] %}
        - {{ x }}
{% endfor %}
    - maintenance_db: {{ pillar['Remove_grants'][user]['maintenance_db'] }}
{% endfor %}
