defmodule Rumbl.Accounts do
  @moduledoc """
  The Accounts context.
  """

  alias Rumbl.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "José", username: "josevalim"},
      %User{id: "2", name: "Bruce", username: "redrapids"},
      %User{id: "3", name: "Chris", username: "chrismccord"}
    ]
  end

  def get_user(id) do
    Enum.find(list_users(), fn map -> map.id == id end)
  end

  def get_user_by(params) do
    list_users() |> Enum.find(fn user -> matchhh?(user, params) end)
  end

  defp matchhh?(user, params) do
    params |> Enum.all?(fn {key, value} -> Map.get(user, key) == value end)
  end
end
