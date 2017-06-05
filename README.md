# mssql-server-linux-with-mssql-tools
Microsoft SQL Server on Linux for Docker with mssql-tools (command-line tools on Linux).

## Basic Usage
Basic usage is same as `Microsoft SQL Server on Linux for Docker Engine`.
For details, please refer to the following links.

- https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-setup-docker
- https://hub.docker.com/r/microsoft/mssql-server-linux/

## With mssql-tools
You can use `SQL Server command-line tools` in this docker container.
For details, please refer to the following links.

- https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-setup-tools

## Pull and run the container image
### Pull the container image from Docker Hub.
```bash
$ docker pull imunew/mssql-server-linux-with-mssql-tools
```

### Run the container image.
```bash
$ docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=<password>' -p 1433:1433 -d imunew/mssql-server-linux-with-mssql-tools
```

### View your Docker containers
```bash
$ docker ps -a
CONTAINER ID        IMAGE                                        COMMAND                  CREATED             STATUS                      PORTS                    NAMES
7bfe007ba171        imunew/mssql-server-linux-with-mssql-tools   "/bin/sh -c /opt/m..."   32 seconds ago      Up 32 seconds               0.0.0.0:1433->1433/tcp   competent_nobel
```

### Execute sqlcmd.
```bash
$ docker exec -it 7bfe007ba171 /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P '<password>'
1> 
```

When you enter SQL as shown below, the results are displayed on the console.

```bash
1> SELECT SYSDATETIMEOFFSET();
2> GO

---------------------------------------------
           2017-06-04 23:55:14.5417764 +00:00

(1 rows affected)
```

## References
- [Run SQL Server 2017 on Docker](https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-setup-docker)
- [Connect and query SQL Server on Linux](https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-connect-and-query-sqlcmd)
