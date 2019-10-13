defmodule Slangman.Game do

  defstruct(
    turns_left: 7,
    game_state: :intializing,
    letters: [],
  )

  def new_game() do
    %Slangman.Game{
      letters: Dictionary.random_word |> String.codepoints}
  end
end
