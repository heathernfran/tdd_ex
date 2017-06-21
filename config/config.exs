# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tdd_ex,
  ecto_repos: [TddEx.Repo]

# Configures the endpoint
config :tdd_ex, TddEx.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GoY6n4yhdk57kmHx2+QmAnQBz2P+seJyjbrRHgcXZLbbKYQAN/iUOIqA55q35QGN",
  render_errors: [view: TddEx.ErrorView, accepts: ~w(json)],
  pubsub: [name: TddEx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
