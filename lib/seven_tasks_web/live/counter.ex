defmodule SevenTasksWeb.Counter do
  use SevenTasksWeb, :live_component

  def mount(socket), do: {:ok, assign(socket, :count, 0)}

  def render(assigns) do
    ~H"""
    <div class="container box">
      <div class="row">
        <div class="column">
          <h4>Counter</h4>
        </div>
      </div>
      <div class="row">
        <div class="column">
          <input disabled value={@count}>
        </div>
        <div class="column">
          <button phx-click="increase" phx-target={@myself}>Count</button> 
        </div>
      </div>
    </div>
    """
  end

  def handle_event("increase", _value, %{assigns: %{count: count}} = socket),
    do: {:noreply, assign(socket, :count, count + 1)}
end
