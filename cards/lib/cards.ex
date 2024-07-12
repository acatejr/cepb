defmodule Cards do
  @moduledoc """
  Provides methods for creating and handling a deck of cards
  """

  @doc """
    Returns a list of strings representing a deck of playing cards
  """
  def create_deck do

    values = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    # This does the same thing as the comment block above.
    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end

  end

  @doc """
  Divides a deck into a hand and remainder of the dick.
  The `hand_size` argument indicates how many cards should
  be in the hand.

  ## Examples

        iex> deck = Cards.create_deck
        iex> {hand, deck} = Cards.deal(deck, 1)
        iex> hand
        ["Ace of Spades"]

  """
  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end

  @doc """
  Shuffles a deck.
  """
  def shuffle(deck) do
    # Immutability - copies input list, shuffles the copy and returns the copy
    # The input is never changed.

    Enum.shuffle(deck)
  end

  @doc """
  Checks to see if a `card` is in a `deck`.

  ## Examples
        iex> deck = Cards.create_deck
        iex> Cards.contains?(deck, "Ace of Spades")
        true
  """
  def contains?(deck, card) do
    # Elixir can have question mark in method name.
    # Convention makes this boolean return value

    Enum.member?(deck, card)
  end

  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  def load(filename) do

    # This is pattern matching
    case File.read(filename) do
      {:ok, binary} -> :erlang.binary_to_term binary
      {:error, _reason} -> "#{filename} file does not exist."
    end

  end

  def create_hand(hand_size) do
    # Using pipe operator

    # Without using pipe
    # deck = Cards.create_deck
    # deck = Cards.shuffle(deck)
    # hand = Cards.deal(deck, hand_size)
    # hand

    # Using pipe operator
    Cards.create_deck
    |> Cards.shuffle
    |> Cards.deal(hand_size)

  end

end
