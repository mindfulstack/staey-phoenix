defmodule Staey.Accounts do
    alias Staey.Repo
    alias Staey.Accounts.User

    def get_user(id) do
        Repo.get(User, id)
    end

    def get_user!(id) do
        Repo.get!(User, id)
    end

    def get_user_by(params) do
        Repo.get_by(User, params)
    end

    def list_users do
        Repo.all(User)
    end
end