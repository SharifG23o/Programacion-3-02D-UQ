defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 24 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Usando enum.reduce/3 se calcula la suma de los elementos de una lista e imprime el resultado
  """
  def main() do
    suma = Enum.reduce([10, 20, 30], 0, fn x, acc -> acc + x end)
    IO.inspect(suma)
  end
end

Main.main()
