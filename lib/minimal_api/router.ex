defmodule MinimalApi.Router do
  use Plug.Router

  if Mix.env == :dev do
    use Plug.Debugger
  end

  import Plug.Conn

  plug(:match)
  plug Plug.Parsers, parsers: [:json],
                     pass: ["application/json"],
                     json_decoder: Poison # use Jason? ¯\_(ツ)_/¯
  plug(:dispatch)

  get "/hello" do
    send_resp(conn, 200, "hello #{Map.get(conn.query_params, "name")}")
  end

  get "/hello/:name" do
    send_resp(conn, 200, "hello #{name}")
  end

  post "hello" do
    name =
      case conn.body_params do
      %{"name" => a_name } -> a_name
      _ -> "Turn down for what!?!"
    end

    response = %{"id" => 1, "name" => name}
    send_resp(conn |> put_resp_content_type("application/json"), 200, Poison.encode!(response))
  end
end
