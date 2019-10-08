# Database

We are using PostgreSQL.

## For use with XCode - [Tutorial: How to use PostgreSQL](https://medium.com/@martinlasek/tutorial-how-to-use-postgresql-efb62a434cc5)

- Install Postgres: `brew install postgresql`

- Initialize Postgres database: `initdb /usr/local/var/postgres`

- Start Postgres database: `brew services start postgresql`
  
- Create database: `createdb mydbname`

- Connect to database: `psql -U postgres`

- Stop database: `dropdb mydbname`


## For use with Docker

In progress..
