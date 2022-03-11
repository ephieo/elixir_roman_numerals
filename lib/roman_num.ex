
   
defmodule RomanNum do
  @roman %{
    1 => "I",
    4 => "IV",
    5 => "V",
    9 => "IX",
    10 => "X",
    40 => "XL",
    50 => "L",
    90 => "XC",
    100 => "C",
    400 => "CD",
    500 => "D",
    900 => "CM",
    1000 => "M"
  }

  @roman_keys Map.keys(@roman) |> Enum.sort(&(&1 > &2))
  def main do
    input = take_input() |> String.trim() |> String.to_integer()
    converted = convert(input)
    print_roman_num(converted,input)
  end

  def take_input do
    IO.gets("Enter number below :\n")
  end

  def print_roman_num(roman,number) do
    IO.puts("#{number} converts to #{roman}")
  end

  @spec convert(pos_integer) :: String.t()
  def convert(number) do
    convert_to_roman(@roman_keys, number, "")
  end

  def convert_to_roman(_, 0, result), do: result

  def convert_to_roman([head | tail] = keys, number, result) do
    if number >= head do
      convert_to_roman(keys, number - head, result <> @roman[head])
    else
      convert_to_roman(tail, number, result)
    end
  end
end

RomanNum.main()
