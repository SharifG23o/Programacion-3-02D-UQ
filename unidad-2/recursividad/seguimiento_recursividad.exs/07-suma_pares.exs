defmodule Pares do
  @moduledoc """
  Módulo Main del Taller de seguimiento recursividad ejercicio 7 - espacio académico programación 3.
  Autores: [Sharif Giraldo, Juan Sebastián Hernández y Santiago Ospina Sánchez]
  Fecha de creación: 2025-09-18
  Fecha de última modificación: 2025-09-23
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  Contiene una lista
  Se imprime el resultado de la suma de los números pares en la lista
  - No recibe parámetros
  """
  def main() do
    lista = [1, 2, 5, 4]
    IO.puts("El resultado de la suma de pares es: #{sumar(lista)}")
  end

  @doc """
  Caso base de la función suma donde se tiene una lista vacía,
  por lo que se retorna 0
  - Parámetros:
    - []: lista sin elementos
  """
  def sumar([]), do: 0

  @doc """
  Función que ejecuta el llamado recursivo para sumar los números pares en la lista
  - Parámetros:
    - [a | f]: lista con al menos un elemento, donde a es el primer elemento y f es el resto de la lista
  Retorna la suma del primer elemento (si es par) más el resultado del llamado
  """
  def sumar([a | f]) when rem(a, 2) == 0 do
    a + sumar(f)
  end

  @doc """
  Función que ejecuta el llamado recursivo para sumar los números pares en la lista
  - Parámetros:
    - [a | f]: lista con al menos un elemento, donde a es el primer elemento y f es el resto de la lista
  Retorna el resultado del llamado recursivo con el resto de la lista
  Si el primer elemento no es par, no se suma
  """
  def sumar([a | f]) when rem(a, 2) != 0 do
    sumar(f)
  end
end

Pares.main()
