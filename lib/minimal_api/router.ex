defmodule MinimalApi.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/hello" do
    send_resp(conn, 200, Poison.encode!(message()))
  end

  defp message do
    %{
      response_type: "in_channel",
      text: "Hello"
    }
  end
end
