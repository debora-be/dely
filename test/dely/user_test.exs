defmodule Dely.UserTest do
  use Dely.DataCase, async: true

  alias Dely.{User, Factory}
  alias Ecto.Changeset

  describe "changeset/2" do
    test "when all params are valid, returns a valid changeset" do
      params = Factory.build(:user_params)

      response = User.changeset(params)

      assert %Changeset{changes: %{name: "aa"}, valid?: true} = response
    end

    test "when updating a changeset, returns a valid changeset with the given changes" do
      params = Factory.build(:user_params)

      update_params = %{name: "aAAa", password: "11122333"}

      response =
        params
        |> User.changeset()
        |> User.changeset(update_params)

      assert %Changeset{changes: %{name: "aAAa"}, valid?: true} = response
    end

    test "when there's some error, returns an invalid changeset" do
      params = Factory.build(:user_params, age: 15, password: "111")

      response = User.changeset(params)

      expected_response = %{
        age: ["must be greater than or equal to 18"],
        password: ["should be at least 6 character(s)"]
      }

      assert errors_on(response) == expected_response
    end
  end
end
