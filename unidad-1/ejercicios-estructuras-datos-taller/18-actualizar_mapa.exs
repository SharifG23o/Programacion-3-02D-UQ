defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 18 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Actualiza un valor en un mapa usando la sintaxis de actualización de mapas (%{map | clave: nuevo_valor}) e imprime el resultado
  """
  def main() do
    mapa = %{nombre: "Ana", edad: 25}
    mapa_actualizado = %{mapa | edad: 26}
    IO.inspect(mapa_actualizado)
  end
end

Main.main()
