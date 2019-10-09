# Database

We are using PostgreSQL.

## For use with XCode - [Tutorial: How to use PostgreSQL](https://medium.com/@martinlasek/tutorial-how-to-use-postgresql-efb62a434cc5)

Helpful links: [PostgreSQL not running on Mac](https://dba.stackexchange.com/questions/75214/postgresql-not-running-on-mac?newreg=7653d562d5e448799bb3102faf5d267a), [17.3. Starting the Database Server](https://www.postgresql.org/docs/9.0/server-start.html), [How to Start PostgreSQL Server on Mac OS X via Homebrew](https://chartio.com/resources/tutorials/how-to-start-postgresql-server-on-mac-os-x/)

- Install Postgres: `brew install postgresql`

- Initialize Postgres database: `initdb /usr/local/var/postgres`

- Start Postgres database: `brew services start postgresql`
  * Do it manually: `pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start`
  
- Create database: `createdb mydbname`

- Connect to database: `psql -U postgres`

- Stop database: `dropdb mydbname`

- Stop Postgres database: `brew services stop postgresql`
  * Do it manually: `pg_ctl -D /usr/local/var/postgres stop -s -m fast`

- Upgrade database: `brew postgresql-upgrade-database`

- Uninstall Postgres: `brew uninstall postgresql`


## For use with Docker

- Wait for Postgres: [Control startup and shutdown order in Compose](https://docs.docker.com/compose/startup-order/)
