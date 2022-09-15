defmodule Dely.Users.Create do
  alias Dely.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
