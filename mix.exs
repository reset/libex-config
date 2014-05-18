defmodule LibEx.Config.Mixfile do
  use Mix.Project

  def project do
    [app: :libex_config,
     version: "0.1.1",
     elixir: "~> 0.12",
     description: description,
     package: package,
     deps: deps]
  end

  def application do
    [ applications: [] ]
  end

  defp deps do
    []
  end

  defp description do
    """
    LibEx.Config exposes helpers around accessing OTP application configuration.
    """
  end

  defp package do
    [ contributors: ["Jamie Winsor"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/reset/libex-config"} ]
  end
end
