# LibEx.Config

LibEx.Config exposes helpers around accessing OTP application configuration

# Usage

Create a new module and use `LibEx.Config` passing the atom for the name of the application's configuration to wrap:

```elixir
defmodule MyApp.Config do
  use LibEx.Config, application: :my_app

  defkey :db_host
  defkey :db_port
  defkey :db_user
  defkey :db_pass
end
```

Each `defkey` call maps to a setting you define in your mix file:

```elixir
defmodule MyApp.Mixfile do
  def application do
    [
      env: [
        env:     :dev,
        db_host: "localhost",
        db_port: 5432,
        db_user: "postgres",
        db_pass: "postgres",
        db_name: "my_app"
      ]
    ]
  end
end
```

Now you can get the configured variables

```elixir
MyApp.Config.db_host
```

Or set them

```elixir
MyAppConfig.db_host("other_database_name")
```

# Authors

Jamie Winsor (<jamie@vialstudios.com>)
