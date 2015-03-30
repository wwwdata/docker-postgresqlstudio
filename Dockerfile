FROM java:7

RUN mkdir /opt/studio
RUN curl -o /tmp/postgresqlstudio.zip http://www.postgresqlstudio.org/?ddownload=47439 
RUN mkdir /opt/postgresqlstudio
RUN unzip -d /opt /tmp/postgresqlstudio.zip 

EXPOSE 8080

CMD /opt/pgstudio_1.2-bin/bin/startup.sh &> /log.txt && tail -f /log.txt
