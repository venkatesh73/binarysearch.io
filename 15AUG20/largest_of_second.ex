defmodule LargestOfSecond do
  def solve(inputs) do
    sorted = Enum.sort(inputs, :desc)
    {f_l, _} = List.pop_at(sorted, 0)
    {s_l, _} = List.pop_at(sorted, 1)

    f_l > s_l * 2
  end
end

LargestOfSecond.solve([3, 6, 15])
|> IO.inspect()
