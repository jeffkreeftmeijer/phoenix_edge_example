# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :phoenix_edge_example,
  ecto_repos: [PhoenixEdgeExample.Repo]

# Configures the endpoint
config :phoenix_edge_example, PhoenixEdgeExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BzOHcPooUMh0HnNbaXN2t51NCkeM1SYb2jDIaJlLnrQrWJYER9wGVUzGdGB8NLS3",
  render_errors: [view: PhoenixEdgeExampleWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixEdgeExample.PubSub,
  live_view: [signing_salt: "qkaoNhDb"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
