defmodule Main do
  @moduledoc """
  Módulo Main del taller de seguimiento ejercicio 1 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-08-28
  Fecha de última modificación: 2025-08-31
  """
  def main() do
    Util.input("Ingrese su nombre: ", :string)
    {distancia, combustible} = pedir_datos()
    calcular_rendimiento(distancia, combustible)
  end

  @doc """
  Función que calcula el rendimiento de un vehículo en km/l.
  - Parámetros:
    - distancia: número que representa la distancia recorrida en kilómetros.
    - combustible: número que representa el combustible consumido en litros.
  """
  def calcular_rendimiento(distancia, combustible) do
    if combustible > 0 do
      "El rendimiento es: #{Float.round(distancia / combustible, 2)} km/l"
      |> Util.show_message()
    else
      "Error: El combustible debe ser mayor que cero."
      |> Util.show_message()

      {distancia, combustible} = pedir_datos()
      calcular_rendimiento(distancia, combustible)
    end
  end

  @doc """
  Función que pide al usuario los datos de distancia y combustible.
  - Retorna una tupla con la distancia y el combustible.
  """
  def pedir_datos() do
    distancia = Util.input("Ingrese la distancia recorrida (km): ", :number)
    combustible = Util.input("Ingrese el combustible consumido (litros): ", :number)
    {distancia, combustible}
  end
end

Main.main()
