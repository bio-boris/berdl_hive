
FROM apache/hive:standalone-metastore-4.1.0

# Install curl and download the PostgreSQL driver
# The "apt-get update" and "apt-get install" should be chained.
RUN apt-get update --yes && \
    apt-get install --yes curl && \
    mkdir -p /opt/hive/lib && \
    curl -L -o /opt/hive/lib/postgresql-42.7.3.jar https://repo1.maven.org/maven2/org/postgresql/postgresql/42.7.3/postgresql-42.7.3.jar && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
