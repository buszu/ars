# Changelog

# v0.0.1

### Outside the application

- created a postgres users `ars` with a password `arsapp1`
- created a postgres users `ars_password` with a password `arspassword1`
- created a db with command:
```shell
createdb -U postgres -O ars ars
```
- created citext extension with command:
```shell
psql -U postgres -c "CREATE EXTENSION citext" ars
```
- granted public schema rights to ars_password
```shell
psql -U postgres -c "GRANT CREATE ON SCHEMA public TO ars_password" ars
```

### In the application

- added dotenv
- specified secrets in .env (outside the repo)
- updated `config/database.yml` to consume db config from the env

# v0.0.0

- Initialized rails application on ruby 3.3.0.
Command used to do it:
```shell
rails new ars -T --database=postgresql
```
- specified a version