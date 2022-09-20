defmodule DelyWeb.UsersView do
  use DelyWeb, :view

  alias Dely.User

  def render("create.json", %{user: %User{} = user}) do
    %{
      message: "User created successfully",
      user: user
    }
  end

  def render("show.json", %{user: %User{} = user}), do: %{user: user}
end
