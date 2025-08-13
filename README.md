# Hive Metastore

* We have 2 builds going on here, see the [dockerfile](dockerfile) and [docker-publish.yml](.github/workflows/docker-publish.yml) for details.


# Upgrading

* Build the new Docker image: Your GHA workflow already has a matrix entry for standalone-metastore-4.1.0 that uses the correct 42.7.7 PostgreSQL driver. This is the main action you need to take.
* Update the Hive configuration: Ensure your new Hive 4.x cluster is configured to use the same PostgreSQL database as your Hive 3.1.3 instance.
* Run schematool: When you launch the new Hive 4.x metastore container, it will automatically run schematool to upgrade the metastore schema in the PostgreSQL database. This is a critical and irreversible step, so it is highly recommended to back up your database before attempting this.
* Switch the clients: After the metastore is successfully upgraded, you can point your Hive clients and other services to the new Hive 4.x metastore. Your old Hive 3.1.3 metastore will no longer be compatible with the updated schema.