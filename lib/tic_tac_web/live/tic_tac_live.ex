defmodule TicTacWeb.TicTacLive do
  use Phoenix.LiveView

  def render(assigns) do
    ~L"""
    <h2>Hello</h2>

    Counter is: <%= @counter %>
    <hr>

    <button phx-click="dec">-</button>
    <button phx-click="inc">+</button>
    """
  end

  def mount(_, socket) do
    {:ok, assign(socket, :counter, 0)}
  end

  def handle_event("inc", _, socket) do
    {:noreply, update(socket, :counter, fn(x) -> x + 1 end)}
  end

  def handle_event("dec", _, socket) do
    {:noreply, update(socket, :counter, fn(x) -> x - 1 end)}
  end
end
