FROM fishtownanalytics/dbt:0.17.0
# RUN cd ../Users/medhapatil/springml/springml_demo_dbt
# RUN apt install -y git
# RUN git clone 
COPY profiles.yml /home/dbt_user/.dbt/
COPY . /dockertest
WORKDIR /dockertest
RUN echo $(ls)
# RUN dbt init springml_demo_dbt_project
# RUN mv profiles.yml  /home/dbt_user/.dbt/
RUN dbt run