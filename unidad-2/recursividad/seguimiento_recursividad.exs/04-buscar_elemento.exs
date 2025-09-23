defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento recursividad ejercicio 4 - espacio académico programación 3.
  Autores: [Sharif Giraldo, Juan Sebastián Hernández y Santiago Ospina Sánchez]
  Fecha de creación: 2025-09-18
  Fecha de última modificación: 2025-09-23
  Licencia: GNU GPLv3
  """

  @doc """
  Caso base de la función buscar_elemento donde se tiene una lista vacía, por
  lo que se retorna que el elemento buscado no estará en ella
  - Parámetros:
    - _elemento: será buscado en la lista si se encuentra o no
    - []: lista sin elementos
  Retorna false dado que el elemento buscado no se encontrará en una lista vacía
  """
  def buscar_elemento(_elemento, []), do: false

  @doc """
  Función que ejecuta el llamado recursivo para buscar un elemento en la lista
  - Parámetros:
    - elemento: será buscado en la lista si se encuentra o no
    - [head | tail]: lista con al menos un elemento, donde head es el primer
      elemento y tail es el resto de la lista
  Retorna true si el elemento se encuentra, false si lo contrario
  """
  def buscar_elemento(elemento, [head | _tail]) when head == elemento, do: true

  @doc """
  Función que ejecuta el llamado recursivo para buscar un elemento en la lista
  - Parámetros:
    - elemento: será buscado en la lista si se encuentra o no
    - [head | tail]: lista con al menos un elemento, donde head es el primer
      elemento y tail es el resto de la lista
  Retorna true si el elemento se encuentra, false si lo contrario
  """
  def buscar_elemento(elemento, [_head | tail]), do: buscar_elemento(elemento, tail)

  @doc """
  Función principal que ejecuta el programa
  contiene una lista, la función de buscar un elemento
  e imprime el resultado de si este último se encuentra o no en ella
  """
  def main() do
    lista = ["Juan", 20, :ok]
    elemento_encontrado = buscar_elemento(30, lista)
    IO.puts("Lista: #{inspect(lista)}")
    IO.puts("¿El elemento se encuentra en la lista?: #{elemento_encontrado}")
  end
end

Main.main()
