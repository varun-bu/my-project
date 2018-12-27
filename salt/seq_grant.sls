{% set user_seq = pillar.get('sequence_grant', {}) %}

{% for user in user_seq %}

user_credentials_{{ user }}:
  postgres_privileges.present:
    - name: {{ user }}
    - object_name: {{ pillar['sequence_grant'][user]['object_name'] }}
    - object_type: {{ pillar['sequence_grant'][user]['object_type'] }}
    - privileges:
{% for x in pillar['sequence_grant'][user]['privileges'] %}
        - {{ x }}
{% endfor %}
    - maintenance_db: {{ pillar['sequence_grant'][user]['maintenance_db'] }}
{% endfor %}