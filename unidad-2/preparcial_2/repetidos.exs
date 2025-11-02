defmodule Main do
  def main do
    lista = [1, 2, 2, 3, 4, 4, 5]
    resultado = eliminar_duplicados(lista)
    IO.inspect(resultado, label: "Lista sin duplicados")
  end

  def eliminar_duplicados([]), do: []

  def eliminar_duplicados([n]), do: [n]

  def eliminar_duplicados([head | tail]) do
    resto = eliminar_duplicados(tail)
    if pertenece?(head, resto) do
      resto
    else
      [head | resto]
    end
  end

  def pertenece?(_, []), do: false
  def pertenece?(x, [head | tail]), do: x == head or pertenece?(x, tail)
end

Main.main()
