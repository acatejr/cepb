defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  # test "greets the world" do
  #   assert Cards.hello() == :world
  # end

  test "card is in deck" do
    deck = Cards.create_deck
    card = "Ace of Spades"

    assert Cards.contains?(deck, card) == true
  end

  test "card is not in deck" do
    deck = Cards.create_deck
    card = "Ace of Spikes"

    assert Cards.contains?(deck, card) == false
  end

end
