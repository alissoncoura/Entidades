import Config

config :entidades, Entidades.Repo,
  database: "entidades_repo",
  username: "postgres",
  password: "splinter",
  hostname: "localhost"

  config :entidades, ecto_repos: [Entidades.Repo]
