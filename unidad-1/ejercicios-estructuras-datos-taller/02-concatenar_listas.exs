defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 2 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que concatena dos listas y muestra el resultado
  - No recibe parámetros
  """
  def main() do
    lista_1 = [1, 2, 3]
    lista_2 = [4, 5, 6]
    concatenar_listas(lista_1, lista_2)
  end

  @doc """
  Función que concatena dos listas y muestra el resultado
  - Parámetros:
    - lista_1: Primera lista a concatenar
    - lista_2: Segunda lista a concatenar
  Retorna la lista concatenada entre lista_1 y lista_2
  """
  def concatenar_listas(lista_1, lista_2) do
    lista_concatenada = lista_1 ++ lista_2
    IO.inspect(lista_concatenada)
  end
end

Main.main()
