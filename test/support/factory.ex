defmodule Dely.Factory do
  use ExMachina

  def user_params_factory do
    %{
      age: 19,
      address: "aqui agora",
      cep: "14432678",
      cpf: "12917666755",
      email: "emthfd8515ll@eamkmd99.comk",
      password: "111525422",
      name: "aa"
    }
  end
end
