# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :staey,
  ecto_repos: [Staey.Repo]

# Configures the endpoint
config :staey, StaeyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "F20KaPH90QLcbLsxMjcJyQpe8op7K3JD4z1u/nWDHSmbwoYLmDlrhA9BqI4A8AkH",
  render_errors: [view: StaeyWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Staey.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
