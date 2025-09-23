defmodule Reservas do
  @moduledoc """
  Módulo Main del Taller de seguimiento recursividad ejercicio 5 - espacio académico programación 3.
  Autores: [Sharif Giraldo, Juan Sebastián Hernández y Santiago Ospina Sánchez]
  Fecha de creación: 2025-09-18
  Fecha de última modificación: 2025-09-23
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  contiene una lista de reservas
  se imprime el total de días reservados
  """
  def main() do
    reservas = [
      %{cliente: "jose", dias: 3},
      %{cliente: "Maria", dias: 2},
      %{cliente: "Juan", dias: 5}
    ]

    IO.puts("El total de dias: #{calcular_dias(reservas)}")
  end

  @doc """
  Función con el llamado recursivo para calcular el total de días reservados
  - Parámetros:
    - [%{dias: d} | f]: lista con al menos un elemento, donde d es el número de
      días del primer elemento y f es el resto de la lista
  Retorna la suma de los días del primer elemento más el resultado del llamado
  recursivo con el resto de la lista
  """
  def calcular_dias([%{dias: d} | f]) do
    d + calcular_dias(f)
  end

  @doc """
  Caso base donde se tiene una lista vacía, por lo que se retorna 0
  - Parámetros:
    - []: lista sin elementos
  Retorna 0 dado que no hay días reservados en una lista vacía
  """
  def calcular_dias([]), do: 0
end

Reservas.main()
