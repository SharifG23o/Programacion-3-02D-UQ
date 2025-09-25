defmodule Main do
  def main do
    list = [1, 2]
    permutacioneslist = permutaciones(list)
    IO.inspect(permutacioneslist)
  end

  def permutaciones(list), do: permutaciones(list, [])

  def permutaciones([], acc), do: [Enum.reverse(acc)]
  def permutaciones(list, acc), do: sacar_y_permutar(list, 0, acc, [])

  def sacar_y_permutar(list, idx, _acc, resultados) when idx == length(list) do
    IO.puts(length(list))
    resultados
  end

  def sacar_y_permutar([h | t] = list, idx, acc, resultados) do
    nuevas = permutaciones(t, [h | acc])
    sacar_y_permutar(t ++ [h], idx + 1, acc, resultados ++ nuevas)
  end
end

Main.main()
