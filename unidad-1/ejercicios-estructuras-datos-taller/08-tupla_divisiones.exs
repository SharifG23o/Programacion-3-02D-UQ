defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 8 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Solicita al usuario ingresar un numerador y un denominador, realiza la división y devuelve el resultado en una tupla
  """
  def main() do
    numerador = Util.input("Ingrese el numerador: ", :number)
    denominador = Util.input("Ingrese el denominador: ", :number)

    resultado = calcular_resultado(numerador, denominador)
    IO.inspect(resultado)
  end

  @doc """
  Función que calcula la división y maneja el caso de división por cero
  - Parámetros:
    - numerador: número que se va a dividir
    - denominador: número por el cual se va a dividir
  Retorna una tupla {:ok, resultado} si la división es exitosa o {:error, "División por cero"} si el denominador es cero
  """
  def calcular_resultado(numerador, denominador) do
    if denominador == 0 do
      {:error, "División por cero"}
    else
      division = numerador / denominador
      {:ok, division}
    end
  end
end

Main.main()
