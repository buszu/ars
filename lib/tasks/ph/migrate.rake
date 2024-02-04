require "sequel"

namespace :ph do
  task :migrate => :environment do
    Sequel.extension :migration

    db_name = ENV.fetch("ARS_DATABASE_NAME")
    db_user = ENV.fetch("ARS_DATABASE_PH_USER")
    db_pass = ENV.fetch("ARS_DATABASE_PH_PASSWORD")

    logger = Logger.new($stdout)

    Sequel.postgres(db_name, user: db_user, password: db_pass, logger: logger) do |db|
      Sequel::Migrator.run(
        db,
        'db/ph_migrate',
        table: 'schema_info_password'
      )
    end
  end
end
