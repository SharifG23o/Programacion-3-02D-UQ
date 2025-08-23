

defmodule Ejercicio1 do

  @moduledoc """
  Módulo del primer ejercicio del seguimiento
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-08-21
  Fecha de última modificación: 2025-08-22
  """

  @doc """
  Función principal del ejercicio 1 que solicita al usuario una palabra, la convierte a mayúsculas y muestra el resultado

  ## Parámetros

    - No recibe

  """
  def main() do

    message = Util.input_data("Ingrese una palabra: ")
    message_mayus = String.upcase(message)
    Util.show_message("La palabra en mayúsculas es: #{message_mayus}")

  end
end

Ejercicio1.main()
