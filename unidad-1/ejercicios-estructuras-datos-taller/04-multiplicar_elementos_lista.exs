defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 4 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  """
  def main() do
    lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    multiplicar_elementos(lista)
  end

  @doc """
  Función que recorre la lista usando Enum.map y multiplica cada elemento por 3, mostrando el resultado
  - Parámetros:
   - lista: lista de números enteros
  Retorna una nueva lista con los elementos multiplicados por 3 y la imprime
  """
  def multiplicar_elementos(lista) do
    elementos_multiplicados = Enum.map(lista, fn x -> x * 3 end)
    IO.inspect(elementos_multiplicados)
  end
end

Main.main()
