defmodule SumOfDigits do
  def run(n) do
    input_to_lists(n)
    |> iterate()
  end

  defp input_to_lists(input) do
    to_string(input)
    |> String.split("", trim: true)
  end

  defp iterate(digits, result \\ 0)

  defp iterate([digit | digits], result) do
    result = result + String.to_integer(digit)
    iterate(digits, result)
  end

  defp iterate([], result) when result >= 10 do
    input_to_lists(result)
    |> iterate()
  end

  defp iterate([], result) when result < 10, do: result
end

# input 493193 == 2 
SumOfDigits.run(493_193)
