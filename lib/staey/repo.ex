defmodule Staey.Repo do
  use Ecto.Repo,
    otp_app: :staey,
    adapter: Ecto.Adapters.Postgres
end
