defmodule Pares do
  def main() do
    lista = [1, 2, 5, 4]
    IO.puts("El resultado de la suma de pares es: #{sumar(lista)}")
  end

  def sumar([]), do: 0

  def sumar([a | f]) when rem(a, 2) == 0 do
    a + sumar(f)
  end

  def sumar([a | f]) when rem(a, 2) != 0 do
    sumar(f)
  end
end

Pares.main()
