# Sending an SMS with Phoenix and the Nexmo SMS API

# Prerequisites

* Elixir
* Phoenix
* [Nexmo Account](https://dashboard.nexmo.com/sign-up)
* [ngrok](https://ngrok.io)

# Installation

* Clone this repository
* Provision a Nexmo number for SMS in your Nexmo Dashboard
* Edit the `.env.sample` file with your Nexmo API credentials obtained through the Nexmo Dashboard
* Rename `.env.sample` to `.env`
* Install dependencies with `mix deps.get`
* Create and migrate your database with `mix ecto.setup`
* Install Node.js dependencies with `cd assets && npm install`
* Start Phoenix endpoint with `mix phx.server`
* Start an ngrok instance with `ngrok http 4000`
* Make sure your Nexmo provisioned phone number is setup to point to your ngrok URL for the webhook. You can do that in the Numbers section of your Nexmo Dashboard

Now you can visit [`localhost:4000/sms`](http://localhost:4000/sms) from your browser.


## License

This project is under the [MIT LICENSE](LICENSE.md)