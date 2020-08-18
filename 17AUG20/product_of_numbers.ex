defmodule ProductOfNumbers do
  def run(nums) do
    iterate(nums, 0, [])
  end

  defp iterate(nums, idx, result) when idx < length(nums) do
    product =
      nums
      |> Enum.with_index()
      |> Enum.reduce(1, fn {digit, i}, product ->
        if(i != idx) do
          product * digit
        else
          product
        end
      end)

    iterate(nums, idx + 1, [product | result])
  end

  defp iterate(_, _, result), do: result
end

ProductOfNumbers.run(Enum.map(1..5, & &1)) |> Enum.reverse() |> IO.inspect(limit: :infinity)
