defmodule MinimalApi.Router do
  use Plug.Router

  if Mix.env == :dev do
    use Plug.Debugger
  end

  import Plug.Conn

  plug(:match)
  plug Plug.Parsers, parsers: [:urlencoded, :multipart, :json, Absinthe.Plug.Parser],
                     pass: ["application/json"],
                     json_decoder: Jason


  plug Absinthe.Plug, schema: MinimalApi.Schema
  plug(:dispatch)

  forward "/graphiql", to: Absinthe.Plug.GraphiQL, init_opts: [schema: MinimalApi.Schema]

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
      _ -> "What's in a name?"
    end

    response = %{"id" => 1, "name" => name}
    send_resp(conn |> put_resp_content_type("application/json"), 200, Jason.encode!(response))
  end
end
