defmodule RomanNumTest do
  use ExUnit.Case
  doctest RomanNum

  test "greets the world" do
    assert RomanNum.hello() == :world
  end

  test "adds numbers together" do
    assert RomanNum.add(1, 2) == 5
  end
end
