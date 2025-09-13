defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 16 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Accede a un valor específico en el mapa usando la función Map.get/2 e imprime el resultado
  """
  def main() do
    mapa = %{nombre: "Mapa", edad: 15, ciudad: "Armenia"}
    mostrar_ciudad = Map.get(mapa, :ciudad)
    IO.inspect(mostrar_ciudad)
  end
end

Main.main()
