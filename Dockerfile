FROM robertoberto/vycontrol

RUN \
    find \
        /code/vycontrol/settings_available/development.py \
        /code/vycontrol/settings_available/production.py \
    | xargs sed -i "s/ALLOWED_HOSTS = .*\$/ALLOWED_HOSTS = \[w.strip() for w in (os.getenv('ALLOWED_HOSTS') or '').split(',') if w\] or \['127.0.0.1'\]/g"
