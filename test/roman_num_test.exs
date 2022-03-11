defmodule RomanNumTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest RomanNum

  test "prints to terminal" do
    assert capture_io(fn ->
             assert RomanNum.print_roman_num("III","3")
           end) == "3 converts to III\n"
  end

  test "input is recieved" do
    assert capture_io("777", fn ->
             IO.write(RomanNum.take_input())
           end) == "Enter number below :\n777"
  end

  test "number is converted and returned" do
    assert capture_io("3", fn ->
             assert RomanNum.main
           end) =~ "III\n"
  end
end
