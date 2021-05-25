defmodule TdplvdWeb.PageLiveTest do
  use TdplvdWeb.ConnCase

  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, page_live, disconnected_html} = live(conn, "/")
    assert disconnected_html =~ "Welcome to Tdplvd"
    assert render(page_live) =~ "Welcome to Tdplvd"
  end
end
