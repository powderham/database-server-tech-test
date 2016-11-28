require "data_mapper"
require "dm-postgres-adapter"

def configure
  DataMapper::Logger.new($stdout, :debug)
  DataMapper.setup(:default, "postgres://localhost/database_server_tech_test")
  DataMapper.finalize
  DataMapper.auto_upgrade!
end
