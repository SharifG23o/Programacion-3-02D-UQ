defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento ejercicio 2 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-03
  Fecha de última modificación: 2025-09-03
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Se ingresa un número
  Retorna la verificación de si el numero es positivo, negativo o cero
  """
  def main() do
    numero = Util.input("Por favor, ingrese un número: ", :number)
    validar_numero(numero)
  end

  @doc """
  Función que valida si el número es positivo, negativo o cero
  - Parámetros:
    - numero: representa el número ingresado a evaluar
  Retorna la validación del número
  Utiliza la estructura condicional if-else
  """
  def validar_numero(numero) do
    if numero > 0 do
      Util.show_message("El número es POSITIVO (+)")
    else
      if numero < 0 do
        Util.show_message("El número es NEGATIVO (-)")
      else
        Util.show_message("El número es CERO (0)")
      end
    end
  end
end

Main.main()
