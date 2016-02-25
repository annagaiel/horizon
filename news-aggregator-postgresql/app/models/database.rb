require "pg"

module Database
  def db_connection
    begin
      connection = PG.connect(Sinatra::Application.db_config)
      yield(connection)
    ensure
      connection.close
    end
  end
end
