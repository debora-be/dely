defmodule DelyWeb.FallbackController do
  use DelyWeb, :controller

  alias Dely.Error
  alias DelyWeb.ErrorView

  def call(conn, {:error, %Error{status: status, result: result}}) do
    conn
    |> put_status(status)
    |> put_view(ErrorView)
    |> render("error.json", result: result)
  end
end
