defmodule UniqueCharacter do
  def run(str) do
    str
    |> String.split("", trim: true)
    |> iterate()
  end

  defp iterate(characters, already_exisits \\ [])

  defp iterate("", _), do: true

  defp iterate([character | characters], already_exisits) do
    IO.inspect(character)

    if character not in already_exisits do
      iterate(characters, [character | already_exisits])
    else
      iterate("exists", already_exisits)
    end
  end

  defp iterate([], _), do: true

  defp iterate("exists", _), do: false
end
