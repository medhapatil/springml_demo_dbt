FROM fishtownanalytics/dbt:0.17.0
USER root
# RUN cd .. && cd .. && cd home/dbt_user/ && mkdir .dbt/
# COPY profiles.yml ~/.dbt/
# RUN cd .. && cd .. && cd usr/app/
RUN echo $(pwd)
COPY . /dockertest
WORKDIR /dockertest
RUN cd .. && echo $(find / -name ".dbt")
# RUN mkdir .dbt/ && mv profiles.yml .dbt/ && cd .dbt/ && echo $(ls -a) 
# WORKDIR /dockertest
# RUN cd .. && cd home/dbt_user/ && cat .profile 
# && mkdir .dbt/ && echo $(ls -a) && mv /dockertest/profiles.yml /home/dbt_user/.dbt/ && cd .. && echo $(ls -a) && cd .. && echo $(ls -a) && cd dockertest && echo $(ls -a) 

# && cd .profile/ && echo $(dir -a) && cd .. && cd .. && echo $(ls) && echo $(pwd) && cd dockertest && mv profiles.yml /home/dbt_user/.dbt/
# ADD profiles.yml /home/dbt_user/.dbt/
# RUN mv profiles.yml /home/dbt_user/.dbt/
# RUN cd .. && cd .. && cd home/dbt_user/ && echo $(ls)
# RUN echo $(pwd)
# RUN echo $(ls)
# RUN cd .dbt/
# RUN echo $(ls)
# RUN chmod -R 777 .

# RUN dbt run