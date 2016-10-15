defmodule Tasker.Mixfile do
  use Mix.Project

  def project do
    [app: :tasker,
     version: "0.1.1",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :slack, :con_cache],
     mod: {Tasker, []}]
  end

  defp deps do
    [
      {:slack, "~> 0.7.1"},
      {:con_cache, "~> 0.11.1"},
      {:websocket_client, git: "https://github.com/jeremyong/websocket_client"}
    ]
  end
end
