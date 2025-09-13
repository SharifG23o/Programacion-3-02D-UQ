defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 20 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Recorre el mapa usando Enum.each/2 e imprime cada par clave-valor
  """
  def main() do
    map = %{a: 1, b: 2, c: 3}

    recorrido_mapa =
      Enum.each(map, fn {clave, valor} ->
        IO.puts("#{clave}: #{valor}")
      end)

    IO.inspect(recorrido_mapa)
  end
end

Main.main()
