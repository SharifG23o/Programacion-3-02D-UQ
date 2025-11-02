defmodule Conteo do
  def main do
    lista = [1]
    resultado = conteo_recursivo(lista)
    IO.puts("El conteo de múltiplos de 3 o 5 es: #{resultado}")
  end

  # Caso base: lista vacía
  def conteo_recursivo([]), do: 0

  def conteo_recursivo([n]) do
    IO.puts("La lista solo contiene un elemento el cual es #{n}")
  end

  # Caso recursivo: lista con elementos
  def conteo_recursivo([head | tail]) do
    if rem(head, 3) == 0 or rem(head, 5) == 0 do
      1 + conteo_recursivo(tail)
    else
      conteo_recursivo(tail)
    end
  end
end

Conteo.main()
