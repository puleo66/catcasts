# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :catcasts,
  ecto_repos: [Catcasts.Repo]

# Configures the endpoint
config :catcasts, Catcasts.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jfcJRrtkijGVoj1fik2ydvkfJk1uiShZQn3jMNU1chiGPrXqGzmg9Z9QdX3A7P1r",
  render_errors: [view: Catcasts.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Catcasts.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
