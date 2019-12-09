defmodule StaeyPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :staey_phoenix,
    adapter: Ecto.Adapters.Postgres
end
