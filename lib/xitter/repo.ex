defmodule Xitter.Repo do
  use Ecto.Repo,
    otp_app: :xitter,
    adapter: Ecto.Adapters.Postgres
end
