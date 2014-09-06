defmodule SassRotor.Mixfile do
  use Mix.Project

  def project do
    [app: :sass_rotor,
     version: "0.0.1",
     elixir: "~> 1.0.0",
     description: description,
     package: package,
     deps: deps]
  end


  def application do
    [
      applications: [:rotor, :sass],
      mod: []
    ]
  end


  defp description do
    """
  A [rotor](https://github.com/HashNuke/rotor) to compile SASS files
"""
  end


  defp package do
    [
      contributors: ["Daniel Farrell"],
      links: %{ "GitHub" => "https://github.com/danielfarrell/sass_rotor" }
    ]
  end


  defp deps do
    [
      {:rotor, "~> 0.2.1"},
      {:sass, github: "danielfarrell/sass.ex"}
    ]
  end
end
