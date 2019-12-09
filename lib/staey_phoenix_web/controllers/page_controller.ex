defmodule StaeyPhoenixWeb.PageController do
  use StaeyPhoenixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
