defmodule DelyWeb.Plugs.UUIDChecker do
  import Plug.Conn

  alias Ecto.UUID
  alias Plug.Conn

  def init(opts), do: opts

  def call(%Conn{params: %{"id" => id}} = conn, _opts) do
    IO.puts("UUIDChecker: #{id}")
    IO.inspect(conn, label: "***********************CONN***********************")

    case UUID.cast(id) do
      :error -> render_error(conn)
      {:ok, _uuid} -> conn
    end
  end

  def call(conn, _opts), do: conn

  defp render_error(conn) do
    body = Jason.encode!(%{message: "Invalid UUID"})

    conn
    |> put_resp_content_type("application/json")
    |> send_resp(:bad_request, body)
    |> halt()
  end
end
