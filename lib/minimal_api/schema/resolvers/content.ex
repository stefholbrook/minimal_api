defmodule MinimalApi.Schema.Resolvers.Content do

  def list_posts(_parent, _args, _resolution) do
    {:ok, "hey"}
  end

end
