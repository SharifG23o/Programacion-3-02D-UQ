defmodule Potencia do
  @moduledoc """
  Módulo Main del Taller de seguimiento recursividad ejercicio 6 - espacio académico programación 3.
  Autores: [Sharif Giraldo, Juan Sebastián Hernández y Santiago Ospina Sánchez]
  Fecha de creación: 2025-09-18
  Fecha de última modificación: 2025-09-23
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  imprime el resultado de elevar un número a una potencia
  - No recibe parámetros
  """
  def main() do
    IO.puts(calcular_potencia(2, 4))
  end

  @doc """
  Caso base de la función calcular_potencia donde se tiene de base 0
  por lo que se retorna 0
  - Parámetros:
    - 0: base a elevar
    - _: cualquier exponente
  Retorna 0 dado que cualquier número elevado a 0 es 0
  """
  def calcular_potencia(0, _), do: 0

  @doc """
  Segundo caso base de la función calcular_potencia donde se tiene exponente 0
  - Parámetros:
    -_: cualquier base
    - 0: exponente
  Retorna 1 dado que cualquier numero elevado a 0 es 1
  """
  def calcular_potencia(_, 0), do: 1

  @doc """
  Función que calcula la potencia de un número mediante el llamado recursivo
  - Parámetros:
    - numero: base a elevar
    - potencia: exponente al que se eleva la base
  Retorna el resultado de elevar la base al exponente
  """
  def calcular_potencia(numero, potencia), do: numero * calcular_potencia(numero, potencia - 1)
end

Potencia.main()
