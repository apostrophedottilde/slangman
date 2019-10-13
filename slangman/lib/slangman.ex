defmodule Slangman do

  alias Slangman.Game

  defdelegate new_game, to: Game

end
