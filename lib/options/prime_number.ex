defmodule Menu.Options.PrimeNumber do
  @initial_factors 0
  @initial_count 1

  def get_prime_number do
    get_number()
    |> verify_number(@initial_factors, @initial_count)
  end

  defp get_number do
    IO.gets("\nEntre com o número: ")
    |> String.replace("\n", "")
    |> String.to_integer()
  end

  defp verify_number(number, factors, count) when factors <= 2 and count <= number do
    case rem(number, count) do
      0 ->
        verify_number(number, factors + 1, count + 1)

      _ ->
        verify_number(number, factors, count + 1)
    end
  end

  defp verify_number(number, factors, _count) when factors == 2, do: IO.puts("#{number} é primo.")
  defp verify_number(number, _factors, _count), do: IO.puts("#{number} não é primo.")
end
