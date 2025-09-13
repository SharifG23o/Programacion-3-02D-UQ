defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento ejercicio 1 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc"""
  Función principal que desestructura una lista de ciudades en cabeza y cola, e imprime ambos.
  - head: Primer elemento de la lista (cabeza).
  - tail: Resto de la lista (cola).
  - No recibe parámetros
  """
  def main() do
    lista_ciudades = ["Armenia", "Pereira", "Cali", "Ibague", "Bogota"]

    [head | tail] = lista_ciudades

    IO.inspect(head)
    IO.inspect(tail)
  end
end

Main.main()
