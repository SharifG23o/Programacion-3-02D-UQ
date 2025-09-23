defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento recursividad ejercicio 1 - espacio académico programación 3.
  Autores: [Sharif Giraldo, Juan Sebastián Hernández y Santiago Ospina Sánchez]
  Fecha de creación: 2025-09-18
  Fecha de última modificación: 2025-09-23
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Imprime el resultado del factorial
  """
  def main do
    result = of(3)
    IO.puts("Resultado: #{result}")
  end

  @doc """
  Caso base: el factorial de 0 es 1
  - Parámetros:
    - 0: número entero positivo del caso base
  - Retorna 1
  """
  def of(0), do: 1

  @doc """
  Función recursiva que calcula el factorial de un número n
  - Parámetros:
    - n: número entero positivo
  - Retorna el factorial de n
  """
  def of(n) when n > 0 do
    n * of(n - 1)
  end
end

Main.main()
