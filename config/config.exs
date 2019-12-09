# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :staey_phoenix,
  ecto_repos: [StaeyPhoenix.Repo]

# Configures the endpoint
config :staey_phoenix, StaeyPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "pzvwAPFC4Wha7dHHV1m13R7ilKeW2e/JddmrtNo5ZZKH7ESCx0f+3mgVl79wC7u8",
  render_errors: [view: StaeyPhoenixWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: StaeyPhoenix.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
