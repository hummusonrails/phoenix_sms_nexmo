defmodule SmsWithPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :sms_with_phoenix,
    adapter: Ecto.Adapters.Postgres
end
