defmodule LibEx.Config do
  defmacro __using__(opts) do
    application = Keyword.fetch!(opts, :application)

    quote do
      import unquote(__MODULE__)

      @doc false
      defp get_env(key) do
        case :application.get_env(unquote(application), key) do
          {:ok, value} ->
            value
          _ ->
            raise "unable to read env key: #{key} for app: #{unquote(application)}"
        end
      end

      @doc false
      defp set_env(key, value) do
        case :application.set_env(unquote(application), key, value) do
          :ok ->
            :ok
          _ ->
            raise "unable to set env key: #{key} for app: #{unquote(application)}"
        end
      end
    end
  end

  defmacro defkey(key) do
    quote do
      def unquote(key)(), do: get_env(unquote(key))
      def unquote(key)(value), do: set_env(unquote(key), value)
    end
  end
end
