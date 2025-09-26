defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento recursividad ejercicio 3 - espacio académico programación 3.
  Autores: [Sharif Giraldo, Juan Sebastián Hernández y Santiago Ospina Sánchez]
  Fecha de creación: 2025-09-18
  Fecha de última modificación: 2025-09-23
  Licencia: GNU GPLv3
  """

  @doc """
  Función con el caso base donde la lista de transacciones está vacía y devuelve como resultado 0
  - Parámetros:
    - []: lista vacía sin transacciones
  """
  defp calcular_balance_rec([]), do: 0

  @doc """
  Función con el llamado recursivo que se encarga de recorrer por cabeza y cola la lista para luego sumar la cabeza
  llamar a la función de calcular balance y sumar los resultados
   - Parámetros:
    - [head | tail] : lista de transacciones que será recorrida por cabeza-cola
  - Retorna el balance final
  """
  defp calcular_balance_rec([head | tail]) do
    head + calcular_balance_rec(tail)
  end

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Imprime el resultado del balance final
  """
  def main() do
    transacciones = [100, 200, 800, -500, -100]

    balance = calcular_balance_rec(transacciones)

    IO.puts("Lista de transacciones: #{inspect(transacciones)}")
    IO.puts("Balance final: #{balance}")
  end
end

Main.main()
