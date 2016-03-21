{% from "polipo/map.jinja" import polipo with context %}

polipo:
  pkg:
    - installed
    - name: {{ polipo.pkg }}
  service:
    - name: {{ polipo.service }}
    - running
    - enable: True
