defmodule StaeyWeb.Router do
  use StaeyWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", StaeyWeb do
    pipe_through :browser

    get "/", PageController, :index
  end


  scope "/api", StaeyWeb do
    pipe_through :api

    get "/users", Api.UserController, :index
    get "/users/:id", Api.UserController, :show
  end
end
