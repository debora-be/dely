defmodule DelyWeb.UsersController do
  use DelyWeb, :controller

  def create(conn, params) do
    Dely.create_user(params)
  end
end
