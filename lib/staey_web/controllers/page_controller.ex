defmodule StaeyWeb.PageController do
  use StaeyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
