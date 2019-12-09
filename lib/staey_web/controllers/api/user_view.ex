defmodule StaeyWeb.Api.UserView do
    use StaeyWeb, :view

    def render("index.json", %{users: users}) do
        %{
            users: Enum.map(users, &user_json/1)
        }
    end

    def user_json(user) do
        %{
          name: user.name,
          username: user.username,
          inserted_at: user.inserted_at,
          updated_at: user.updated_at
        }
    end
end