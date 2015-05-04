uwsgi:
    pkg:
        - installed
        - names:
            - uwsgi
            - uwsgi-extra
            - uwsgi-plugin-python

    service:
        - running
        - enable: True
        - require:
            - pkg: uwsgi