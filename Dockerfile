FROM fishtownanalytics/dbt:0.17.0

COPY profiles.yml /home/dbt_user/.dbt/
COPY . /dockertest
WORKDIR /dockertest

RUN dbt run