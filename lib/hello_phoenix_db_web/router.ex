defmodule HelloPhoenixDbWeb.Router do
  use HelloPhoenixDbWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", HelloPhoenixDbWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/hello", HelloController, :index
    get "/hello/:messenger", HelloController, :show
  end

  resources "/users", UserController do
    resources "/posts", PostController
  end

  # Other scopes may use custom stacks.
  # scope "/api", HelloPhoenixDbWeb do
  #   pipe_through :api
  # end
end
