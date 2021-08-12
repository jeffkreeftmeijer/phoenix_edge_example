defmodule PhoenixEdgeExampleWeb.PageController do
  use PhoenixEdgeExampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
