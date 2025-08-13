FROM apache/hive:standalone-metastore-4.1.0
USER root
RUN wget -O /opt/hive/lib/postgresql-42.7.7.jar \
    https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.7/postgresql-42.7.7.jar
USER hive