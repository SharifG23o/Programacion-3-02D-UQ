defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 3- espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """
  
  @doc """
  Función principal que resta elementos específicos de una lista y muestra el resultado
  - No recibe parámetros
  """
  def main() do
    lista = [10, 20, 20, 40, 50]
    restar_elementos(lista)
  end

  @doc """
  Función que resta elementos específicos de una lista usando el operador -- y muestra el resultado
  -Parámetros:
    - lista: lista de números enteros
  Retorna la lista resultante después de restar los elementos [20, 50] de la lista original
  """
  def restar_elementos(lista) do
    lista_restados = lista -- [20, 50]
    IO.inspect(lista_restados)
  end
end

Main.main()
