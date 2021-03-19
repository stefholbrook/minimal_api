defmodule MinimalApi.Endpoint do
  # use Plug.Router

  # alias MinimalApi.Router

  # plug(:match)

  # plug(Plug.Parsers,
  #   parsers: [:json],
  #   pass: ["application/json"],
  #   json_decoder: Poison
  # )

  # plug(:dispatch)

  # match _ do
  #   send_resp(conn, 404, "Requested page not found")
  # end

  # match _ do
  #   send_resp(conn, 404, "Requested page not found")
  # end

  # # forward(“/bot”, to: Router)

  # @spec child_spec(any) :: %{
  #         id: MinimalApi.Endpoint,
  #         start: {MinimalApi.Endpoint, :start_link, [...]}
  #       }
  # def child_spec(opts) do
  #   %{
  #     id: __MODULE__,
  #     start: {__MODULE__, :start_link, [opts]}
  #   }
  # end

  # def start_link(_opts), do: Plug.Adapters.Cowboy.http(__MODULE__, [])
end
