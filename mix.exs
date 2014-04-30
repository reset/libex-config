defmodule LibEx.Config.Mixfile do
  use Mix.Project

  def project do
    [app: :libex_config,
     version: "0.1.0",
     elixir: "~> 0.12",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [ applications: [] ]
  end

  # List all dependencies in the format:
  #
  # {:foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    []
  end
end
