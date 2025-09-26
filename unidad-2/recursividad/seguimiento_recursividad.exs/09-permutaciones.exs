defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento recursividad ejercicio 9 - espacio académico programación 3.
  Autores: [Sharif Giraldo, Juan Sebastián Hernández y Santiago Ospina Sánchez]
  Fecha de creación: 2025-09-18
  Fecha de última modificación: 2025-09-25
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  Muestra las permutaciones de una lista dada
  """
  def main do
    list = [1, 2]
    permutacioneslist = permutaciones(list)
    IO.inspect(permutacioneslist)
  end

  @doc """
  Función que inicia el proceso de generación de permutaciones
  - Parámetros:
    - list: lista de elementos a permutar
  Retorna una lista con todas las permutaciones posibles de la lista dada
  """
  def permutaciones(list), do: permutaciones(list, [])

  @doc """
  Caso donde la lista está vacía, se retorna una lista con el acumulador invertido
  - Parámetros:
    - list: lista de elementos a permutar
    - acc: acumulador que guarda la permutación actual
  """
  def permutaciones([], acc), do: [Enum.reverse(acc)]

  @doc """
  Función que genera las permutaciones de una lista
  - Parámetros:
    - list: lista de elementos a permutar
    - acc: acumulador que guarda la permutación actual
    - idx: índice actual en la lista
    - resultados: lista de permutaciones generadas hasta el momento
  Retorna una lista con todas las permutaciones posibles de la lista dada
  """
  def permutaciones(list, acc), do: sacar_y_permutar(list, 0, acc, [])

  @doc """
  Función que saca un elemento de la lista y genera permutaciones con el resto
  - Parámetros:
    - list: lista de elementos a permutar
    - idx: índice actual en la lista
    - acc: acumulador que guarda la permutación actual
    - resultados: lista de permutaciones generadas hasta el momento
  Retorna una lista con todas las permutaciones posibles de la lista dada
  """
  def sacar_y_permutar(list, idx, _acc, resultados) when idx == length(list) do
    IO.puts(length(list))
    resultados
  end

  @doc """
  Función que saca un elemento de la lista y genera permutaciones con el resto
  - Parámetros:
    - list: lista de elementos a permutar
    - idx: índice actual en la lista
    - acc: acumulador que guarda la permutación actual
    - resultados: lista de permutaciones generadas hasta el momento
  Retorna una lista con todas las permutaciones posibles de la lista dada
  """
  def sacar_y_permutar([h | t] = list, idx, acc, resultados) do
    nuevas = permutaciones(t, [h | acc])
    sacar_y_permutar(t ++ [h], idx + 1, acc, resultados ++ nuevas)
  end
end

Main.main()
