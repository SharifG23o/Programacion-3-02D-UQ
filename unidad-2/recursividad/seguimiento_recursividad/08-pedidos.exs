defmodule Pedidos do
  @moduledoc """
  Módulo Main del Taller de seguimiento recursividad ejercicio 8 - espacio académico programación 3.
  Autores: [Sharif Giraldo, Juan Sebastián Hernández y Santiago Ospina Sánchez]
  Fecha de creación: 2025-09-18
  Fecha de última modificación: 2025-09-23
  Licencia: GNU GPLv3
  """
  def main() do
    pedidos = [
      %{producto: "sal", cantidad: 2},
      %{producto: "mani", cantidad: 1},
      %{producto: "chocolatina", cantidad: 5}
    ]

    IO.puts("El total de pedidos es: #{calcular_total(pedidos)}")
  end

  @doc """
  caso base donde se tiene una lista vacía, por lo que se retorna 0
  - Parámetros:
    - []: lista sin elementos
  Retorna 0 dado que no hay pedidos en una lista vacía
  """
  def calcular_total([]), do: 0

  @doc """
  Función con el llamado recursivo para calcular el total de pedidos
  - Parámetros:
    - [%{cantidad: c} | f]: lista con al menos un elemento, donde c es la cantidad
      del primer elemento y f es el resto de la lista
  Retorna la suma de las cantidades del primer elemento más el resultado del llamado
  recursivo con el resto de la lista
  """
  def calcular_total([%{cantidad: c} | f]) do
    c + calcular_total(f)
  end
end

Pedidos.main()
