defmodule JaqTreino.Options.Area do
  def calculate_area() do
    base = get_base()
    height = get_height()
    area = base * height / 2
    IO.puts("A área do triânuo é de: #{area}")
  end

  defp get_base() do
    IO.gets("\nEntre com a base do triângulo: ")
    |> String.replace("\n", "")
    |> String.to_integer()
  end

  defp get_height() do
    IO.gets("Entre com a altura do triângulo: ")
    |> String.replace("\n", "")
    |> String.to_integer()
  end
end
