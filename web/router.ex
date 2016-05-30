defmodule Peepchat.Router do
  use Peepchat.Web, :router

  pipeline :api do
    plug :accepts, ["json", "json_api"]
  end

  scope "/api", Peepchat do
    pipe_through :api
    # Route stuff to our session controller
    resources "session", SessionController, only: [:index]
  end
end
