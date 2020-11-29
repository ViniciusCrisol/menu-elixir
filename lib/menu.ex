defmodule Menu do
  alias Menu.Options.{CalculateArea, SumOddNumbers, PrimeNumber}

  def open do
    get_menu_option()
    |> switch_option()
  end

  defp get_menu_option do
    show_menu_options()
    |> String.replace("\n", "")
    |> String.to_integer()
  end

  defp show_menu_options do
    IO.puts("\n1 - Área de um triângulo.")
    IO.puts("2 - Soma elementos ímpares.")
    IO.puts("3 - Determinar se é número primo.")
    IO.gets("Escolha uma das três opções, caso outra o programa será encerrado: ")
  end

  defp switch_option(option) when option == 1, do: run_calculate_area_and_restart()
  defp switch_option(option) when option == 2, do: run_sum_odd_numbers_and_restart()
  defp switch_option(option) when option == 3, do: run_is_prime_number_and_restart()
  defp switch_option(_), do: IO.puts("\nProcesso encerrado.")

  defp run_calculate_area_and_restart do
    CalculateArea.calculate_area()
    open()
  end

  defp run_sum_odd_numbers_and_restart do
    SumOddNumbers.sum_odd_numbers()
    open()
  end

  defp run_is_prime_number_and_restart do
    PrimeNumber.get_prime_number()
    open()
  end
end
