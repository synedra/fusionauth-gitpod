FROM gitpod/workspace-postgres

USER root

RUN service postgresql start &&\
  sudo -u postgres psql -c "CREATE ROLE gitpod WITH SUPERUSER LOGIN PASSWORD 'password';" &&\
  service postgresql stop
