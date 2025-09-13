defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 9 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que desestructura una tupla y muestra los elementos
  - No recibe parámetros
  Se usa pattern matching para desestructurar la tupla y acceder a sus elementos
  Se imprimen los datos obtenidos de la tupla
  """
  def main() do
    {:usuario, nombre, edad} = {:usuario, "Ana", 25}
    IO.puts(nombre)
    IO.inspect(edad)
  end
end

Main.main()
