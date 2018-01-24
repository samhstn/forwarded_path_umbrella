# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :forwarded_path_web,
  namespace: ForwardedPathWeb

# Configures the endpoint
config :forwarded_path_web, ForwardedPathWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "etNyi80RLrv+Pixv/3LxWWbuqMTKi4HoTcqKAt1X7/dD4gSyW1PUAd0P9+lZ7fEs",
  render_errors: [view: ForwardedPathWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: ForwardedPathWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :forwarded_path_web, :generators,
  context_app: :forwarded_path

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
