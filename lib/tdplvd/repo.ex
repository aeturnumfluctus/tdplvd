defmodule Tdplvd.Repo do
  use Ecto.Repo,
    otp_app: :tdplvd,
    adapter: Ecto.Adapters.Postgres
end
