defmodule MinimalApiTest do
  use ExUnit.Case
  doctest MinimalApi

  test "greets the world" do
    assert MinimalApi.hello() == :world
  end
end
