defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento ejercicio 6 - espacio académico programación 3.
  Programa que verifica si un repartidor tiene o no un pedido asignado, de ser negativo, le asigna uno con
  su respectiva referencia
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-03
  Fecha de última modificación: 2025-09-03
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Se ingresa la verificación del pedido (si/no)
  Se retorna la verificación del estado del pedido
  """
  def main() do
    verificacion_pedido = Util.input("¿Se encuentra realizando un pedido)? (si/no): ", :string)
    asignar_pedido(verificacion_pedido)
  end

  @doc """
  Función que verifica si el repartidor tiene o no un pedido asignado
  - Parámetros:
   - verificacion_pedido: representa la cadena de texto ingresada como respuesta
   si el empleado tiene o no un correspondiente pedido asignado
  Retorna la asignación del pedido
  Se hace uso de la estructura condicional unless
  """
  def asignar_pedido(verificacion_pedido) do
    unless verificacion_pedido == "no" do
      Util.show_message("No puede tomar un nuevo pedido hasta entregar el actual")
    else
      numero_pedido = :rand.uniform(90000) + 9999

      Util.show_message("Se le ha asignado un pedido de referencia ref. #{numero_pedido} ")
    end
  end
end

Main.main()
