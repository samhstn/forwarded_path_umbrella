defmodule ForwardedPathWeb.Router do
  use ForwardedPathWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/child", ChildWeb.Router
  end
end
