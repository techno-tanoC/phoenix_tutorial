# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tutorial,
  ecto_repos: [Tutorial.Repo]

# Configures the endpoint
config :tutorial, Tutorial.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ab3S4q1pkKTM1hvjuO3OZ8eJ8DBmLVXhOhpakQTxut2/Hg8QdBqsypW4BpwIuPeW",
  render_errors: [view: Tutorial.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Tutorial.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
