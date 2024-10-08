defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck makes 20 cards" do
    deck_length = Cards.create_deck()
    |> length()

    assert deck_length == 20
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck()
    refute deck == Cards.shuffle(deck)
  end
end
