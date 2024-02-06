# Changelog

# v0.0.5
- added `GET api/users/me` endpoint

# v0.0.4
- added and installed doorkeeper with PKCE
- configured resource owner authenticator in doorkeeper initializer

# v0.0.3

- installed tailwindcss
- generated views with:
```shell
rails generate rodauth:views --css=tailwind
```
- ui tweaks

# v0.0.2

- added `rodauth-rails` with command:
- created and routed home controller with a show action and view
```shell
bundle add rodauth-rails
```
- generated rodauth setup with:
```shell
rails generate rodauth:install
```
- followed setup instructions after generating rodauth setup but leveraged dotenv to setup action mailer settings
- added rake task to execute migrations for the ph user
- tweaked default rodauth-rails migration - removed password hashes from accounts
- tweaked `app/misc/rodauth_main.rb` - removed password hashes column setup and set `use_database_authentication_functions?(true)`

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