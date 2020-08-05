FROM fishtownanalytics/dbt:0.17.0

COPY profiles.yml /home/dbt_user/.dbt/
COPY . /dockertest
WORKDIR /dockertest
RUN echo $(pwd)
RUN chmod -R 777 .

RUN dbt run