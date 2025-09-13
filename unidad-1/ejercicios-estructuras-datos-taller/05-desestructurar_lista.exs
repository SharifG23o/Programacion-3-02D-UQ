defmodule Main do
  @moduledoc"""
  Módulo Main del Taller de seguimiento Estructuras ejercicio 5 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """

  Función principal que desestructura una lista y muestra los elementos
  - No recibe parámetros
  """
  def main() do

   [a, b, c] = [100, 200, 300]

  IO.puts("a = #{a}")
  IO.puts("b = #{b}")
  IO.puts("c = #{c}")


  end
end

Main.main()
