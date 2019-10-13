defmodule GameTest do
  use ExUnit.Case
  doctest Slangman

  alias Slangman.Game

  test "new_game returns structure" do
    game = Game.new_game()

    assert game.turns_left == 8
    assert game.game_state == :initializing
    assert length(game.letters) > 0
  end

  test "state isn't changed for :won or :lost game" do
    for state <- [:won, :lost] do
      game = Game.new_game() |> Map.put(:game_state, state)
      assert {^game, _} = Game.make_move(game, "x")
    end
  end

end