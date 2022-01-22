defmodule Entidades.Repo do
  use Ecto.Repo,
    otp_app: :entidades,
    adapter: Ecto.Adapters.Postgres
end
