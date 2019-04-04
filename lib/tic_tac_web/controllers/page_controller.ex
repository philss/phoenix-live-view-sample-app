defmodule TicTacWeb.PageController do
  use TicTacWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
