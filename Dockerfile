FROM apache/hive:standalone-metastore-4.1.0

RUN apt-get update && \
    apt-get install -y curl && \
    curl -L -o /opt/hive/lib/postgresql-42.7.3.jar \
      https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.3/postgresql-42.7.3.jar && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
