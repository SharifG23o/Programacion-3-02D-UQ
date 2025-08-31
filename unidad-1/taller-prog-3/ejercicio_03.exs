defmodule Main do
  @moduledoc """
  Módulo Main del taller de seguimiento ejercicio 3 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-08-28
  Fecha de última modificación: 2025-08-31
  """

  @doc """
  Función principal que ejecuta el programa.
  Solicita al usuario su nombre y una temperatura en grados Celsius.
  Convierte la temperatura a grados Fahrenheit y Kelvin, y muestra un mensaje con los resultados.
  - No recibe parámetros.
  - Retorna un mensaje con la temperatura convertida.
  """
  def main() do
    nombre = Util.input("Ingrese su nombre: ", :string)
    temperatura_celsius = Util.input("Ingrese la temperatura en grados Celsius: ", :float)
    convertir_a_fahrenheit_y_kelvin(nombre, temperatura_celsius)
  end

  @doc """
  Función que convierte una temperatura de grados Celsius a grados Fahrenheit y Kelvin.
  - Parámetros:
    - nombre: cadena de texto que representa el nombre del usuario.
    - celsius: número que representa la temperatura en grados Celsius.
  - Retorna un mensaje con la temperatura convertida.
  """
  def convertir_a_fahrenheit_y_kelvin(nombre, celsius) do
    fahrenheit = celsius * 9 / 5 + 32
    kelvin = celsius + 273.15

    "#{nombre}, la temperatura es:\n #{Float.round(fahrenheit, 2)} °F \n #{Float.round(kelvin, 2)} K"
    |> Util.show_message()
  end
end

Main.main()
