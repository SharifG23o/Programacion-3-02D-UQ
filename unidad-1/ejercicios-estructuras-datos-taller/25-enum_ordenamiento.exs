defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 25 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Se tiene una lista de mapas que representan personas con nombre y edad
  Se agrupan las personas por edad usando Enum.group_by/2 y se imprime el resultado
  Retorna un mapa donde las claves son las edades y los valores son listas de personas con esa edad
  """
  def main() do
    personas = [
      %{nombre: "Ana", edad: 20},
      %{nombre: "Juan", edad: 25},
      %{nombre: "Luis", edad: 20}
    ]

    agrupados = Enum.group_by(personas, fn persona -> persona.edad end)
    IO.inspect(agrupados)
  end
end

Main.main()
