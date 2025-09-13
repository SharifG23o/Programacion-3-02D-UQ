defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento ejercicio 11 - espacio académico programación 3.
  Programa que realiza una división entera y devuelve un mensaje de acuerdo a la operación y parámetros ingresados
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-02
  Fecha de última modificación: 2025-09-03
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Se ingresan un numerador y denominador
  Se determina la condición a partir de las variables anteriores
  """
  def main() do
    numerador = Util.input("Ingrese el numerador: ", :number)
    denominador = Util.input("Ingrese el denominador: ", :number)
    condicion_division(numerador, denominador)
  end

  @doc """
  Función que  realiza una división segura entre dos números
  Si el divisor es 0, debe devolver un error.
  Si la división es exacta (sin residuo), mostrar el cociente.
  Si no es exacta, mostrar cociente y residuo.
  - Parámetros:
   - numerador: entero que representa el numerador de la división
   - denominador: entero que representa por qué número será realizada la división
  Retorna la condición sea no válida la operación o mostrando los resultados correspondientes
  Se utiliza la estructura condicional case

  """
  def condicion_division(numerador, denominador) do
    case denominador do
      0 ->
        Util.show_message("No se puede dividir por cero")

      _ when rem(numerador, denominador) == 0 ->
        resultado = div(numerador, denominador)
        Util.show_message("El resultado de la división es: #{resultado}")

      _ ->
        cociente = div(numerador, denominador)
        residuo = rem(numerador, denominador)
        Util.show_message("El cociente de la división es #{cociente} y su residuo es #{residuo}")
    end
  end
end

Main.main()
