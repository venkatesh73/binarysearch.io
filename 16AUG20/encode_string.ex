defmodule EncodeString do
  def encode(string) do
    Regex.split(
      ~r/([A-Za-z])\1*/,
      string,
      include_captures: true
    )
    |> to_encode("")
  end

  defp to_encode(["" | remaining], result), do: to_encode(remaining, result)

  defp to_encode([item | remaining], result) do
    occurance =
      item
      |> String.length()
      |> to_string

    char = String.at(item, 0)

    to_encode(remaining, result <> occurance <> char)
  end

  defp to_encode([], result), do: result
end

EncodeString.encode("AAAABBBCCDAA") |> IO.inspect()
