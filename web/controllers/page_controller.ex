defmodule Catcasts.PageController do
  use Catcasts.Web, :controller

  def index(conn, _params) do
  	conn
  	|> put_flash(:info, "This is a test")
    |> render("index.html")
  end
end
