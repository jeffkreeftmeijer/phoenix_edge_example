defmodule PhoenixEdgeExample.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_edge_example,
    adapter: Ecto.Adapters.Postgres
end
