defmodule Tutorial.UserControllerSpec do
  use ESpec.Phoenix, controller: Tutorial.UserController, async: true

  let :assigns, do: conn.assigns

  describe "index" do
  end
end
