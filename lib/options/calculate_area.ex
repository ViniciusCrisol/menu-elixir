defmodule Menu.Options.CalculateArea do
  def calculate_area do
    IO.puts("\n")

    base = get_base()
    height = get_height()
    calculatearea = base * height / 2

    IO.puts("A área do triânuo é de: #{calculatearea}")
  end

  defp get_base do
    IO.gets("Entre com a base do triângulo: ")
    |> String.replace("\n", "")
    |> String.to_integer()
  end

  defp get_height do
    IO.gets("Entre com a altura do triângulo: ")
    |> String.replace("\n", "")
    |> String.to_integer()
  end
end
