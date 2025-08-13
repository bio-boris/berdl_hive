# This Dockerfile is designed to be highly flexible and reusable.
# It uses build arguments to specify the base Hive image and the JDBC driver version.

# ARG for the Hive image tag (e.g., 3.1.3 or standalone-metastore-4.1.0)
ARG HIVE_IMAGE_TAG

# ARG for the PostgreSQL driver version (e.g., 42.2.8 or 42.7.7)
ARG POSTGRESQL_DRIVER_VERSION

# Use the arguments in the FROM and COPY instructions.
FROM apache/hive:${HIVE_IMAGE_TAG}

# Copy the specific version of the PostgreSQL JDBC driver.
# The filename is constructed dynamically from the build argument.
COPY postgresql-${POSTGRESQL_DRIVER_VERSION}.jar /opt/hive/lib/
