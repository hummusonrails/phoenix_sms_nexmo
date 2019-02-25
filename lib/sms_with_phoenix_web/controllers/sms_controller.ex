defmodule SmsWithPhoenixWeb.SmsController do
    use SmsWithPhoenixWeb, :controller

    def index(conn, _params) do
        render(conn, "index.html", token: get_csrf_token())
    end

    def send(conn, %{"number" => number, "message" => message}) do
        url = "https://rest.nexmo.com/sms/json"
        req_body = "" 

        response = HTTPoison.post(url, req_body, [], params: %{api_key: "#{System.get_env("NEXMO_API_KEY")}", api_secret: "#{System.get_env("NEXMO_API_SECRET")}", from: "#{System.get_env("NEXMO_NUMBER")}", text: "#{message}", to: "#{number}"})
        if {:ok} do
            conn
            redirect(_conn, to: Routes.update_path(conn, :update))
        else {:error}
            Flash.put(:error, "Something went wrong.")
        end
    end

    def update(conn, _params) do
        render(conn, "update.html")
    end
end