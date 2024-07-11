defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.

  Everything in elixir is in modules, like this one.  A module is a collection of methods.

  Pattern matching is core to elixir.
  Pattern matching is elixir's replacement for variable assignment.
  Pattern matching is used anytime = is used.
  {} are tuples in elixir
  """

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  def create_deck do

    values = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    # cards = for value <- values do
    #   for suit <- suits do
    #     "#{value} of #{suit}"
    #   end
    # end
    # List.flatten(cards)

    # This does the same thing as the comment block above.
    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end

  end

  def shuffle(deck) do
    # Immutability - copies input list, shuffles the copy and returns the copy
    # The input is never changed.

    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    # Elixir can have question mark in method name.
    # Convention makes this boolean return value

    Enum.member?(deck, card)
  end
end
