defmodule TdplvdWeb.PageLive do
  use TdplvdWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, the_value: 0)}
  end
  
  @impl true
  def handle_event("inc_value", _session, socket) do
    {:noreply, inc_value(socket)}
  end

  defp inc_value(socket) do
    assign(socket, the_value: socket.assigns.the_value + 1)
  end
end
