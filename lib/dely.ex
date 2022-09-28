defmodule Dely do
  @moduledoc """
  Dely keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  alias Dely.Users.Create, as: UserCreate
  alias Dely.Users.Delete, as: UserDelete
  alias Dely.Users.Get, as: UserGet
  alias Dely.Users.Update, as: UserUpdate

  defdelegate create_user(params), to: UserCreate, as: :call
  defdelegate delete_user(id), to: UserDelete, as: :call
  defdelegate get_user_by_id(id), to: UserGet, as: :by_id
  defdelegate update_user(params), to: UserUpdate, as: :call
end
