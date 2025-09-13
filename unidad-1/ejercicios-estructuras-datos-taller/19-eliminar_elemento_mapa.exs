defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 19 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Elimina un elemento específico del mapa usando Map.delete/2 e imprime el resultado
  """
  def main() do
    map = %{nombre: "Luis", edad: 30, ciudad: "Cali"}
    new_map = Map.delete(map, :ciudad)
    IO.inspect(new_map)
  end
end

Main.main()
