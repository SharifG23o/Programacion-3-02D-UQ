defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento ejercicio 7 - espacio académico programación 3.
  Programa que recibe una nota y muestra el estado académico según esta misma
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-03
  Fecha de última modificación: 2025-09-03
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Se ingresa la nota correspondiente en formato numérico float
  Muestra la condición establecida a partir de la nota ingresada
  """
  def main() do
    nota = Util.input("Ingrese la nota: ", :float)
    establecer_condicion(nota)
  end

  @doc """
  Función que establece la condición académica según la nota ingresada
  - Parámetros
   - nota: Representa numéricamente la nota ingresada por el estudiante
  Retorna la retroalimentación o condición académica correspondiente en base a los intervalos
  Se utiliza la estructura condicional cond
  """
  def establecer_condicion(nota) do
    cond do
      nota >= 4.5 -> Util.show_message("Excelente")
      nota >= 3.0 and nota < 4.5 -> Util.show_message("Aprobado")
      nota < 3.0 -> Util.show_message("Reprobado")
    end
  end
end

Main.main()
