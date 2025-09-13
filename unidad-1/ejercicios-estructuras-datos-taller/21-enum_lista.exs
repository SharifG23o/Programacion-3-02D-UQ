defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 21 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Recorre la lista usando Enum.each/2 y la función anónima e imprime cada elemento
  """
  def main() do
    lista_recorrida = Enum.each([1, 2, 3, 4, 5], fn x -> IO.puts(x) end)
    IO.inspect(lista_recorrida)
  end
end

Main.main()
