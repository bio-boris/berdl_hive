FROM apache/hive:3.1.3
COPY postgresql-42.7.7.jar /opt/hive/lib/
USER hive