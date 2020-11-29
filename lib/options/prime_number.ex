defmodule Menu.Options.PrimeNumber do
  @initial_count 0
  @initial_factors 0

  def get_prime_number do
    get_number()
    |> verify_number(@initial_count, @initial_factors)
  end

  defp get_number do
    IO.gets("\nEntre com o número: ")
    |> String.replace("\n", "")
    |> String.to_integer()
  end

  defp verify_number(number, factors, count) when factors < 2 and count < number + 1 do
    case rem(count, number) do
      0 ->
        verify_number(number, factors + 1, count + 1)

      _ ->
        verify_number(number, factors, count + 1)
    end
  end

  defp verify_number(number, 2, _count), do: IO.puts("#{number} é primo.")
  defp verify_number(number, _factors, _count), do: IO.puts("#{number} não é primo.")
end
