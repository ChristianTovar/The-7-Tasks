defmodule SevenTasksWeb.HomeLive do
  use SevenTasksWeb, :live_view
  alias SevenTasksWeb.Counter

  def render(assigns) do
    ~H"""
    <.live_component module={Counter} id="counter" />
    """
  end
end
