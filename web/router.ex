defmodule TddEx.Router do
  use TddEx.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TddEx do
    pipe_through :api
  end
end
