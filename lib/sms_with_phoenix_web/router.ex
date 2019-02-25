defmodule SmsWithPhoenixWeb.Router do
  use SmsWithPhoenixWeb, :router

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

  scope "/", SmsWithPhoenixWeb do
    pipe_through :browser

    get "/sms", SmsController, :index

    post "/send", SmsController, :send

    get "/update", SmsController, :update, as: :update
  end

  # Other scopes may use custom stacks.
  # scope "/api", SmsWithPhoenixWeb do
  #   pipe_through :api
  # end
end
