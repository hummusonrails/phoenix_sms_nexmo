# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :sms_with_phoenix,
  ecto_repos: [SmsWithPhoenix.Repo]

# Configures the endpoint
config :sms_with_phoenix, SmsWithPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "u2HpuYL+6pHg45bnqft00/9Ml3g5bEsNEWZNYzuWjiF5CpMyGzQSZRoID998o6X+",
  render_errors: [view: SmsWithPhoenixWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SmsWithPhoenix.PubSub, adapter: Phoenix.PubSub.PG2],
  nexmo_api_key: System.get_env("NEXMO_API_KEY"),
  nexmo_api_secret: System.get_env("NEXMO_API_SECRET"),
  nexmo_number: System.get_env("NEXMO_NUMBER")

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
