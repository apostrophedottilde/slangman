defmodule SlangmanTest do
  use ExUnit.Case
  doctest Slangman

  test "greets the world" do
    assert Slangman.hello() == :world
  end
end
