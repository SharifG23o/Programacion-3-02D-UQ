defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento ejercicio 1 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-03
  Fecha de última modificación: 2025-09-03
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  retorna la verificación de la mayoría o no mayoría de edad
  """
  def main() do
    edad = Util.input("Por favor, ingrese su edad: ", :integer)
    verificar_mayoria_edad(edad)
  end

  @doc """
  Función que verifica si la edad ingresada hace a la persona mayor o menor de edad
  - Parámetros:
    - edad: Se verifica que si es mayor o igual a 18 se cumple con la mayoría de edad
    o de lo contrario es menor de edad
  Se utiliza la estructura condicional if-else

  """
  def verificar_mayoria_edad(edad) do
    if edad >= 18 do
      Util.show_message("Eres mayor de edad.")
    else
      Util.show_message("Eres menor de edad.")
    end
  end
end

Main.main()
