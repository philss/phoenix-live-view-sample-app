defmodule TicTacWeb.TicTacLiveTest do
  use ExUnit.Case, async: true
  import Phoenix.LiveViewTest

  alias TicTacWeb.Endpoint
  alias TicTacWeb.TicTacLive

  describe "mounting" do
    test "mount with disconnected module" do
      {:ok, _view, html} = mount(Endpoint, TicTacLive)
      assert html =~ "Counter is: 0"
    end
  end

  describe "render_click" do
    test "increase counter with 'inc' click" do
      {:ok, view, _html} = mount(Endpoint, TicTacLive)

      assert render_click(view, :inc) =~ "Counter is: 1"
      assert render_click(view, :inc) =~ "Counter is: 2"
    end

    test "decrease counter with 'dec' click" do
      {:ok, view, _html} = mount(Endpoint, TicTacLive)

      assert render_click(view, :dec) =~ "Counter is: -1"
    end
  end
end
