defmodule Main do
  @moduledoc"""
  Módulo Main del Taller de seguimiento Estructuras ejercicio 22 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """


  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Genera una lista de los cuadrados de los elementos de la lista usando Enum.map/2
  donde la función anónima eleva cada elemento al cuadrado e imprime la lista resultante
  """
  def main() do

    cuadrados = Enum.map([1, 2, 3, 4], fn x -> x**2  end)
    IO.inspect(cuadrados)
  end
end
Main.main()
