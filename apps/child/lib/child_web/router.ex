defmodule ChildWeb.Router do
  use ChildWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ChildWeb do
    pipe_through :api

    get "/other", OtherController, :index
  end
end
