defmodule JaqTreino do
  def start do
    get_menu_option()
    |> IO.puts()
  end

  defp get_menu_option do
    IO.puts("1 - Área de um triângulo.")
    IO.puts("2 - Soma elementos ímpares.")
    IO.puts("3 - Determinar se é número primo..")
    IO.gets("Escolha uma das três opções, caso outra o programa será encerrado. ")
  end
end
