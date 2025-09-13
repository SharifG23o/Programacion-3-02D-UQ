defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 17 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Crea un mapa que representa a una persona, agrega un nuevo par clave-valor usando Map.put/3 e imprime el mapa actualizado
  """
  def main() do
    mapa_persona = %{nombre: "Sharif", edad: 19, semestre: 4}
    mapa_actualizado = Map.put(mapa_persona, :profesion, "Ingeniero")
    IO.inspect(mapa_actualizado)
  end
end

Main.main()
