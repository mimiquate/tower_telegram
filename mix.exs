defmodule TowerTelegram.MixProject do
  use Mix.Project

  def project do
    [
      app: :tower_telegram,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:tower, "~> 0.6.0"},
      {:telegex, "~> 1.8.0"},
      {:finch, "~> 0.19.0", optional: true},
      {:httpoison, "~> 2.2", optional: true}
    ]
  end
end
