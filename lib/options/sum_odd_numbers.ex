defmodule Menu.Options.SumOddNumbers do
  def sum_odd_numbers do
    IO.puts("\n")

    result =
      get_numbers([])
      |> Enum.filter(fn num -> rem(num, 2) != 0 end)
      |> Enum.sum()

    IO.puts("A soma dos números ímpares é: #{result}")
  end

  defp get_numbers(numbers) when length(numbers) < 5, do: run_get_number_and_restart(numbers)
  defp get_numbers(numbers), do: numbers

  defp run_get_number_and_restart(numbers) do
    get_number(length(numbers))
    |> concat_numbers(numbers)
    |> get_numbers()
  end

  defp get_number(numbers_length) do
    IO.gets("Entre com o #{numbers_length + 1} número: ")
    |> String.replace("\n", "")
    |> String.to_integer()
  end

  defp concat_numbers(number, numbers), do: numbers ++ [number]
end
