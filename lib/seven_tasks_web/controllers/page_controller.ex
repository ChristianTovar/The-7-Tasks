defmodule SevenTasksWeb.PageController do
  use SevenTasksWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
