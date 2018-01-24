defmodule ChildWeb.Router do
  use ChildWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ChildWeb do
    pipe_through :api
  end
end
