defmodule MinimalApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :minimal_api,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {MinimalApi.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, "~> 3.0"},
      {:plug_cowboy, "~> 2.0"},
      {:cowboy, "~> 2.4"}
    ]
  end
end
