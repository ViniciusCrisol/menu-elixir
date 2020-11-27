defmodule JaqTreino.Options.Area do
  def calculate_area() do
    base = get_base()
    height = get_height()
    base * height / 2
  end

  defp get_base() do
    IO.gets("Entre com a base do triângulo: ")
    |> String.replace("\n", "")
    |> String.to_integer()
  end

  defp get_height() do
    IO.gets("Entre com a altura do triângulo: ")
    |> String.replace("\n", "")
    |> String.to_integer()
  end
end
