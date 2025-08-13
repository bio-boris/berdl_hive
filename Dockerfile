# This Dockerfile is designed to be highly flexible and reusable.
# It uses build arguments to specify the base Hive image and the JDBC driver version.

# This ARG is for the base Hive image tag. It is in scope for the FROM instruction.
ARG HIVE_IMAGE_TAG

# This ARG is for the PostgreSQL driver version. It is in scope until the FROM instruction.
ARG POSTGRESQL_DRIVER_VERSION

# Use the HIVE_IMAGE_TAG argument in the FROM instruction.
FROM apache/hive:${HIVE_IMAGE_TAG}

# IMPORTANT: The ARG for POSTGRESQL_DRIVER_VERSION must be redeclared here
# to be in scope for the rest of the build stage, including the COPY command.
ARG POSTGRESQL_DRIVER_VERSION

# Copy the specific version of the PostgreSQL JDBC driver.
# The filename is constructed dynamically from the build argument.
COPY postgresql-${POSTGRESQL_DRIVER_VERSION}.jar /opt/hive/lib/
