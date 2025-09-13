defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento ejercicio 5 - espacio académico programación 3.
  Programa que verifica si un número es igual o no a cero (0)
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-03
  Fecha de última modificación: 2025-09-03
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Se ingresa el número a verificar
  Confirma si el número es igual o no a cero
  """
  def main() do
    numero = Util.input("Por favor, ingrese un número: ", :number)
    verificar_numero(numero)
  end

  @doc """
  Función que verifica si el número es igual o diferente de cero
  - Parámetros:
   - numero: representa aquel que se ingresa para ser verificado
  Retorna el mensaje de si el número es igual o distinto a cero
  Se hace uso de la estructura condicional unless
  """
  def verificar_numero(numero) do
    unless numero == 0 do
      Util.show_message("El número NO es CERO (0)")
    else
      Util.show_message("El número es CERO (0)")
    end
  end
end
