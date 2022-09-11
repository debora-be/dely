defmodule Dely.Repo do
  use Ecto.Repo,
    otp_app: :dely,
    adapter: Ecto.Adapters.Postgres
end
