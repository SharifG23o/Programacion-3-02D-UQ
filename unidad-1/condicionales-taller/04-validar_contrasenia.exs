defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento ejercicio 4 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-03
  Fecha de última modificación: 2025-09-03
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Obtiene la contraseña ingresada
  La salida obtenida es la validación de lo que haya sido ingresado como contraseña
  """
  def main() do
    contrasenia = Util.input("Por favor, ingrese su contraseña: ", :string)
    validar_contrasenia(contrasenia)
  end

  @doc """
  Función que valida si la contraseña ingresada es equivalente a "1234"
  - Parámetros:
   - Contrasenia: Cadena de texto que representa el campo rellenado de lo que se solicita
  Retorna incorrecto o correcto dependiendo del caso ingresado
  Se hace uso de la estructura condicional unless
  """
  def validar_contrasenia(contrasenia) do
    unless contrasenia == "1234" do
      Util.show_message("ERROR: Contraseña incorrecta.")
    else
      Util.show_message("ACCESO PERMITIDO")
    end
  end
end

Main.main()
