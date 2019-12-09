defmodule StaeyWeb.Api.UserController do
    use StaeyWeb, :controller
    alias Staey.Accounts

    def index(conn, _params) do
       users = Accounts.list_users()
       render conn, "index.json", users: users
    end

end