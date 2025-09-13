defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 10 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Se tiene originalmente una tupla y se convierte a lista usando Tuple.to_list/1
  Se imprime la lista resultante
  """
  def main() do
    tupla = {:a, :b, :c}
    tupla_convertida = Tuple.to_list(tupla)
    IO.inspect(tupla_convertida)
  end
end

Main.main()
