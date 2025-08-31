defmodule Main do
  @moduledoc """
  Módulo Main del taller de seguimiento ejercicio 2 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-08-28
  Fecha de última modificación: 2025-08-31
  """

  @doc """
  Función principal que ejecuta el programa.
  Solicita al usuario el título del libro, la cantidad de unidades disponibles y el precio unitario.
  Calcula el valor total del inventario y muestra un mensaje con la información.
  - No recibe parámetros.
  """
  def main() do
    nombre = Util.input("Ingrese el titulo del libro: ", :string)
    cantidad = Util.input("Ingrese la cantidad de unidades disponibles: ", :integer)
    precio = Util.input("Ingrese el precio unitario: ", :number)
    valor_total = cantidad * precio

    Util.show_message(
      "El libro \"#{nombre}\" tiene #{cantidad} unidades, con un valor total de $#{valor_total}."
    )
  end
end

Main.main()
