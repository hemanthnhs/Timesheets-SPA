defmodule Timesheets2Web.UserView do
  use Timesheets2Web, :view
  alias Timesheets2Web.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      email: user.email,
      name: user.name,
      password_hash: user.password_hash,
      is_manager: user.is_manager,
      manager_id: user.supervisor_id
    }
  end
end
