defmodule DelyWeb.UsersController do
  use DelyWeb, :controller

  alias Dely.User
  alias DelyWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Dely.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end
end
