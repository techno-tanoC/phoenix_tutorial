defmodule ESpec.Phoenix.Extend do
  def model do
    quote do
      alias Tutorial.Repo
    end
  end

  def controller do
    quote do
      alias Tutorial
      import Tutorial.Router.Helpers

      @endpoint Tutorial.Endpoint
    end
  end

  def view do
    quote do
      import Tutorial.Router.Helpers
    end
  end

  def channel do
    quote do
      alias Tutorial.Repo

      @endpoint Tutorial.Endpoint
    end
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
