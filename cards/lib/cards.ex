defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.

  Everything in elixir is in modules, like this one.  A module is a collection of methods.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cards.hello()
      :world

  """
  # def hello do
  #   :world
  # end

  def create_deck do
    ["Ace", "Two", "Three"]
  end

  def shuffle(deck) do
    Enum.shuffle(deck)
  end

end
