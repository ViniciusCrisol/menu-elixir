defmodule JaqTreino do
  alias JaqTreino.Options
  alias JaqTreino.Options.Area

  def start do
    get_menu_option()
    |> switch_option()
  end

  defp get_menu_option do
    IO.puts("1 - Área de um triângulo.")
    IO.puts("2 - Soma elementos ímpares.")
    IO.puts("3 - Determinar se é número primo.")
    IO.gets("Escolha uma das três opções, caso outra o programa será encerrado: ")
  end

  defp switch_option(option), do: Area.calculate_area()
  # defp switch_option(option) when option == 2, do
  # defp switch_option(option) when option == 3, do
end
