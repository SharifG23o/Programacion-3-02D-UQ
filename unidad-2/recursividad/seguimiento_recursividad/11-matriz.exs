defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento recursividad ejercicio 11 - espacio académico programación 3.
  Autores: [Sharif Giraldo, Juan Sebastián Hernández y Santiago Ospina Sánchez]
  Fecha de creación: 2025-09-18
  Fecha de última modificación: 2025-09-25
  Licencia: GNU GPLv3
  """
  @doc """
  Función principal que ejecuta el programa
  Muestra la suma de todos los elementos en una matriz
  """
  def main do
    matriz = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]

    IO.puts("Suma total: #{sumar_matriz(matriz)}")
  end

  @doc """
  Caso base donde la matriz está vacía, se retorna 0
  - Parámetros:
    - []: matriz vacía
  Retorna 0 dado que no hay elementos en una matriz vacía
  """
  def sumar_matriz([]), do: 0

  @doc """
  Función que suma todos los elementos en una matriz
  - Parámetros:
    - [fila | resto]: matriz con al menos una fila, donde fila es la primera fila
      y resto es el resto de la matriz
  Retorna la suma de los elementos de la primera fila más la suma del resto de la matriz
  """
  def sumar_matriz([fila | resto]) do
    sumar_fila(fila) + sumar_matriz(resto)
  end

  @doc """
  Caso base donde la fila está vacía, se retorna 0
  - Parámetros:
    - []: fila vacía
  Retorna 0 dado que no hay elementos en una fila vacía
  """
  def sumar_fila([]), do: 0

  @doc """
  Función que realiza el llamado recursivo para sumar los elementos de una fila
  - Parámetros:
    - [h | t]: fila con al menos un elemento, donde h es el primer elemento
      y t es el resto de la fila
  Retorna la suma del primer elemento más el resultado del llamado recursivo con el resto de la fila
  """
  def sumar_fila([h | t]) do
    h + sumar_fila(t)
  end
end

Main.main()
