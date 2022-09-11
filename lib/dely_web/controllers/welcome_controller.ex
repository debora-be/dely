defmodule DelyWeb.WelcomeController do
  use DelyWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(:ok)
    |> IO.inspect()
    |> text("Welcome to Dely!")
  end
end
