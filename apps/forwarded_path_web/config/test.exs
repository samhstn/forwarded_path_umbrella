use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :forwarded_path_web, ForwardedPathWeb.Endpoint,
  http: [port: 4001],
  server: false
