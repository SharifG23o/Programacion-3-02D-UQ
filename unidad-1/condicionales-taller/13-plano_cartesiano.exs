defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento ejercicio 12 - espacio académico programación 3.

  Programa que determina la ubicación de un punto en el plano cartesiano a partir de
  las coordenadas ingresadas por el usuario, indicando si el punto está en el origen,
  sobre los ejes o en el plano.

  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-02
  Fecha de última modificación: 2025-09-03
  """

  @doc """
  Función principal del programa.

  - Solicita al usuario el ingreso de dos coordenadas: `x,y`.
  - Construye una tupla `{x, y}` con los valores ingresados.
  - Envía la tupla a la función `ubicacion_tupla_coordenadas` para determinar la ubicación del punto.
  """
  def main() do
    coordenada_x = Util.input("Ingrese la coordenada en el eje X", :integer)
    coordenada_y = Util.input("Ingrese la coordenada en el eje Y", :integer)
    tupla_coordenadas = {coordenada_x, coordenada_y}
    ubicacion_tupla_coordenadas(tupla_coordenadas)
  end

  @doc """
  Determina la ubicación de un punto en el plano cartesiano en función de la tupla `{x, y}` recibida

  - Si el punto es `{0, 0}`, está en el origen.
  - Si `y = 0` y `x != 0`, el punto está sobre el eje X.
  - Si `x = 0` y `y != 0`, el punto está sobre el eje Y.
  - En cualquier otro caso, el punto está en el plano.

  -Parámetros:
   - tupla_coordenadas : `{integer, integer}` → tupla con las coordenadas `(x, y)`

  Se usa la estructura condicional case
  """
  def ubicacion_tupla_coordenadas(tupla_coordenadas) do
    case tupla_coordenadas do
      {0, 0} -> Util.show_message("Está en el origen")
      {coordenada_x, 0} when coordenada_x != 0 -> Util.show_message("Está sobre el eje X")
      {0, coordenada_y} when coordenada_y != 0 -> Util.show_message("Está sobre el eje Y")
      _ -> Util.show_message("Está en el plano")
    end
  end
end

Main.main()
