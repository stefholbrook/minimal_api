defmodule MinimalApi.Schema.Types.ContentTypes do
  use Absinthe.Schema.Notation

  object :post do
    field :message, :string
  end
end
