# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bark,
  ecto_repos: [Bark.Repo]

# Configures the endpoint
config :bark, BarkWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zG2S40nxB7ZojC55wmSrnyN4m/aSTYHE3RlUu/ze6WClOOS3sMQrF853x3fTGHLr",
  render_errors: [view: BarkWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Bark.PubSub,
  live_view: [signing_salt: "+IfxcQVO"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
