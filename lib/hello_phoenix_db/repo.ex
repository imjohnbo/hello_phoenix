defmodule HelloPhoenixDb.Repo do
  use Ecto.Repo,
    otp_app: :hello_phoenix_db,
    adapter: Ecto.Adapters.Postgres
end
