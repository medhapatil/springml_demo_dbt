FROM fishtownanalytics/dbt:0.17.0
USER root
ADD profiles.yml /home/dbt_user/.dbt/
# RUN cd .. && cd .. && cd home/dbt_user/ && mkdir .dbt/
# COPY profiles.yml /home/dbt_user/.dbt
# RUN cd .. && cd .. && cd usr/app/
COPY . /dockertest
WORKDIR /dockertest
# RUN mv profiles.yml /home/dbt_user/.dbt/
# RUN cd .. && cd .. && cd home/dbt_user/ && echo $(ls)
# RUN echo $(pwd)
# RUN echo $(ls)
# RUN cd .dbt/
# RUN echo $(ls)
# RUN chmod -R 777 .

RUN dbt run --profile springml