use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :sms_with_phoenix, SmsWithPhoenixWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :sms_with_phoenix, SmsWithPhoenix.Repo,
  username: "postgres",
  password: "postgres",
  database: "sms_with_phoenix_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
