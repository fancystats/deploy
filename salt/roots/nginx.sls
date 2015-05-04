nginx:
    pkg:
        - installed

    service:
        - running
        - enable: True
        - require:
            - pkg: nginx
        - watch:
            - file: /etc/nginx/sites-enabled/*

/etc/nginx/sites-enabled/default:
    file:
        - absent
