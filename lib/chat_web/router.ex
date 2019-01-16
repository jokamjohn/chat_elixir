defmodule ChatWeb.Router do
  use ChatWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ChatWeb do
    pipe_through :api
    resources "/users", UserController, except: [:new, :edit]
  end
end
