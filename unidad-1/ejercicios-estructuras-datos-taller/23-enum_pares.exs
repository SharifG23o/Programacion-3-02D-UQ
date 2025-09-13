defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 23 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Genera la lista de números pares de la lista usando Enum.filter/2 donde se
  llama la función anónima que verifica si el número es par con rem/2 e imprime la lista de pares
  """
  def main() do
    pares = Enum.filter([5, 6, 7, 8, 9, 10], fn x -> rem(x, 2) == 0 end)
    IO.inspect(pares)
  end
end

Main.main()
