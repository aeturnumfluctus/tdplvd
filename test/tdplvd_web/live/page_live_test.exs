defmodule TdplvdWeb.PageLiveTest do
  use TdplvdWeb.ConnCase

  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, page_live, disconnected_html} = live(conn, "/")
    assert disconnected_html =~ "Welcome to Tdplvd"
    assert render(page_live) =~ "Welcome to Tdplvd"
  end

  test "user can click \"Increment\" button to increment the value", %{conn: conn} do
    {:ok, view, html} = live(conn, "/")

    assert has_element?(view, "#the-value", "0") 
    
    view 
    |> element("button#value-incrementer", "Increment") 
    |> render_click()

    assert has_element?(view, "#the-value", "1") 
  end
end
