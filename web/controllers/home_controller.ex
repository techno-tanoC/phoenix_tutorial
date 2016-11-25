defmodule Tutorial.HomeController do
  use Tutorial.Web, :controller

  def hello(conn, _params) do
    render conn, "hello.html", title: "hello"
  end

  def help(conn, _params) do
    render conn, "help.html", title: "help"
  end

  def about(conn, _params) do
    render conn, "about.html", title: "about"
  end
end
