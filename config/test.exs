use Mix.Config

# Configure your database
config :staey_phoenix, StaeyPhoenix.Repo,
  username: "postgres",
  password: "postgres",
  database: "staey_phoenix_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :staey_phoenix, StaeyPhoenixWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
