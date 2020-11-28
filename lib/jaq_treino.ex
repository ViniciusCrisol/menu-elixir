defmodule JaqTreino do
  alias JaqTreino.Options
  alias JaqTreino.Options.Area

  def open_menu do
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

  defp switch_option(option) when option == 1, do: run_area_option_and_restart()
  defp switch_option(option) when option == 2, do: run_area_option_and_restart()
  defp switch_option(option) when option == 3, do: run_area_option_and_restart()
  defp switch_option(option), do: IO.puts("\nProcesso encerrado.")

  defp run_area_option_and_restart do
    Area.calculate_area()
    open_menu()
  end
end
