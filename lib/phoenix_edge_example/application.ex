defmodule PhoenixEdgeExample.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      PhoenixEdgeExample.Repo,
      # Start the Telemetry supervisor
      PhoenixEdgeExampleWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: PhoenixEdgeExample.PubSub},
      # Start the Endpoint (http/https)
      PhoenixEdgeExampleWeb.Endpoint
      # Start a worker by calling: PhoenixEdgeExample.Worker.start_link(arg)
      # {PhoenixEdgeExample.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PhoenixEdgeExample.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    PhoenixEdgeExampleWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
