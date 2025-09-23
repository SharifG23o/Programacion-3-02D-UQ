defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento recursividad ejercicio 2 - espacio académico programación 3.
  Autores: [Sharif Giraldo, Juan Sebastián Hernández y Santiago Ospina Sánchez]
  Fecha de creación: 2025-09-18
  Fecha de última modificación: 2025-09-23
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Se imprime el resultado del conteo de elementos en la lista
  """
  def main do
    list = [1, 2, 3, 4, 5]
    result = elementos_lista(list, 0)
    IO.puts("Resultado: #{result}")
  end

  @doc """
  Caso recursivo que cuenta los elementos en caso de que la lista esté vacía
  - Parámetros:
    - []: lista vacía
    - count: contador de elementos en la lista
  - Retorna el conteo de elementos en la lista
  """
  def elementos_lista([], count), do: count

  @doc """
  Función recursiva que cuenta los elementos de una lista no vacía
  - Parámetros:
    - [_ | tail]: lista no vacía desestructurada en cabeza y cola
    - count: contador de elementos en la lista
  - Retorna el conteo de elementos en la lista
  """
  def elementos_lista([_ | tail], count) do
    elementos_lista(tail, count + 1)
  end
end

Main.main()
