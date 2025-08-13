# This Dockerfile uses a build argument to specify the base Hive image. See gha workflows
ARG HIVE_IMAGE_TAG="3.1.3"
FROM apache/hive:${HIVE_IMAGE_TAG}
COPY postgresql-42.7.7.jar /opt/hive/lib/
