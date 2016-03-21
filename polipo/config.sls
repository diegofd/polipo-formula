{% from "polipo/map.jinja" import polipo with context %}

include:
  - polipo

polipo_config:
  file:
    - managed
    - name: {{ polipo.config }}
    - source: salt://polipo/files/config.jinja
    - template: jinja
    - config: {{ salt['pillar.get']('polipo') }}
    - user: root
    - watch_in:
      - service: polipo

