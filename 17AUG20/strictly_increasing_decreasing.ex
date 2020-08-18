@doc """
Given an list of numbers, determine whether the list is strictly increasing or strictly decreasing.

nums = [1, 2, 3, 4, 5]
output: true

nums = [1, 2, 3, 4, 5, 5]
output: false 
"""

defmodule StrictlyIncreasingDecreasing do
  def run(inputs) do
    iterate(inputs)
  end

  defp iterate(inputs, is_increasing \\ true, is_decreasing \\ true)

  defp iterate([digit | remaining], is_increasing, is_decreasing) when remaining != [] do
    [next_digit | _] = remaining

    is_increasing = if is_increasing, do: digit < next_digit, else: is_increasing
    is_decreasing = if is_decreasing, do: digit > next_digit, else: is_decreasing

    iterate(remaining, is_increasing, is_decreasing)
  end

  defp iterate(_, is_increasing, is_decreasing), do: is_increasing || is_decreasing
end

StrictlyIncreasingDecreasing.run([10, 9, 8, 6, 5, 4, 1]) |> IO.inspect()
