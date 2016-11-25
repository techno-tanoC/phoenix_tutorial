defmodule Tutorial.PageController do
  use Tutorial.Web, :controller

  def index(conn, _params) do
    render conn, "index.html", title: "Home"
  end
end
