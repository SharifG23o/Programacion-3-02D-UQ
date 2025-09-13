defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento ejercicio 8 - espacio académico programación 3.
  Programa que recibe un valor de temperatura y establece si es frío, templado o caluroso
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-03
  Fecha de última modificación: 2025-09-03
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Se ingresa la temperatura en °C
  Retorna la condición térmica y la muestra en pantalla
  """
  def main() do
    temperatura = Util.input("Ingrese la temperatura en °C: ", :number)
    condicion_temperatura(temperatura)
  end

  @doc """
  Función que establece la condición térmica o de temperatura
  - Parámetros:
   - temperatura: representa el valor ingresado que será analizado
  Retorna las condiciones (frío,templado,caluroso) a partir de los intervalos establecidos
  Se hace uso de la estructura condicional cond
  """
  def condicion_temperatura(temperatura) do
    cond do
      temperatura < 15 -> Util.show_message("Frío")
      temperatura > 15 and temperatura < 25 -> Util.show_message("Templado")
      temperatura > 25 -> Util.show_message("Caluroso")
    end
  end
end

Main.main()
