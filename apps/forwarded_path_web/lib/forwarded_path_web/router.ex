defmodule ForwardedPathWeb.Router do
  use ForwardedPathWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ForwardedPathWeb do
    pipe_through :api
  end
end
