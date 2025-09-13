defmodule Main do
  @moduledoc"""
  Módulo Main del Taller de seguimiento Estructuras ejercicio 7 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  """
  def main() do

    mi_tupla =  {:ok, "Exitoso", 200}
    modificar_elemento(mi_tupla)
  end

  @doc """
  Función que modifica un elemento específico de una tupla usando la función put_elem/3 e imprime el resultado
  - Parámetros:
    - mi_tupla: tupla original
  Retorna una nueva tupla con el elemento modificado y la imprime
  """
  def modificar_elemento(mi_tupla) do

    modificado = put_elem(mi_tupla, 2, 404)
    IO.inspect(modificado)
  end
end

Main.main()
