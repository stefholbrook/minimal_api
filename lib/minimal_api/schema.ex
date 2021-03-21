defmodule MinimalApi.Schema do
  use Absinthe.Schema

  import_types(MinimalApi.Schema.Types.ContentTypes)

  alias MinimalApi.Schema.Resolvers

  query do
    @desc "Get all posts"
    field :posts, list_of(:post) do
      resolve &Resolvers.Content.list_posts/3
    end

  end
end
