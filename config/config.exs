# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_video_stream,
  ecto_repos: [PhoenixVideoStream.Repo]

# Configures the endpoint
config :phoenix_video_stream, PhoenixVideoStream.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Id8lBDnI6tjw19mJPC1a5eA1Lm33HkZ66ZeFYI1MF1uNNfXvvVXsYr31ykHeCx9G",
  render_errors: [view: PhoenixVideoStream.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixVideoStream.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
