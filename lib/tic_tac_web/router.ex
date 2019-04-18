defmodule TicTacWeb.Router do
  use TicTacWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TicTacWeb do
    pipe_through :browser

    get "/", PageController, :index
    live "/tic-tac", TicTacLive
  end

  # Other scopes may use custom stacks.
  # scope "/api", TicTacWeb do
  #   pipe_through :api
  # end
end
