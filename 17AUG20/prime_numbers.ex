defmodule PrimeNumbers do
  def run(n) do
    find_prime(2, n)
  end

  defp find_prime(start, upto, prime_sequence \\ [])

  defp find_prime(start, upto, prime_sequence) when start <= upto do
    prime_sequence =
      if Enum.all?(2..(start - 1), fn digit ->
           rem(start, digit) != 0
         end) do
        [start | prime_sequence]
      else
        prime_sequence
      end

    find_prime(start + 1, upto, prime_sequence)
  end

  defp find_prime(_, _, prime_sequence), do: Enum.reverse(prime_sequence)
end

PrimeNumbers.run(10000) |> IO.inspect(limit: :infinity)
