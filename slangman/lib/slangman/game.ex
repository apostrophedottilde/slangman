defmodule Slangman.Game do

  defstruct(
    turns_left: 8,
    game_state: :initializing,
    letters: []
  )

  def new_game() do
    %Slangman.Game{
      letters: Dictionary.random_word |> String.codepoints}
  end

  def make_move(game = %{game_state: state}, _guess) when state in [:won, :lost] do
    { game, tally(game) }
  end

  def tally(game) do
    123
  end
end
