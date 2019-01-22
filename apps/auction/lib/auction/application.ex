defmodule Auction.Application do
  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Starts a worker by calling: Auction.Worker.start_link(arg)
      # {Auction.Worker, arg},
      {Auction.Repo, []}
    ]

    opts = [strategy: :one_for_one, name: Auction.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
