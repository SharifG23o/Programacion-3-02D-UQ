defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento ejercicio 10 - espacio académico programación 3.
  Programa que lee un carácter y muestra si es una vocal ("a", "e", "i", "o", "u") o una consonante.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-02
  Fecha de última modificación: 2025-09-03
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Se ingresa el caracter sea vocal o consonante
  Valida si efectivamente es vocal o consonante y es mostrado
  """
  def main() do
    caracter = Util.input("Ingrese un caracter", :string)
    validar_caracter(caracter)
  end

  @doc """
  Función encargada de validar si el caracter introducido es vocal o consonante
  - Parámetros:
   -caracter: representa una cadena de texto bien pudiendo ser consonante o vocal
  Retorna un mensaje indicando la correspondiente validación
  Se hace uso de la estructura condicional case
  """
  def validar_caracter(caracter) do
    case caracter do
      "a" -> Util.show_message("Vocal")
      "e" -> Util.show_message("Vocal")
      "i" -> Util.show_message("Vocal")
      "o" -> Util.show_message("Vocal")
      "u" -> Util.show_message("Vocal")
      _ -> Util.show_message("Consonante")
    end
  end
end

Main.main()
