defmodule RomanNumTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest RomanNum

  test "prints to terminal" do
    assert capture_io(fn ->
             assert RomanNum.print_roman_num("hello")
           end) == "hello\n"
  end

  test "input is recieved" do
    assert capture_io("777", fn ->
             IO.write(RomanNum.take_input())
           end) == "Enter number below :\n777"
  end

  test "number is converted and returned" do
    assert capture_io(fn ->
             assert RomanNum.convert(1)
           end) == "I\n"
  end
end
