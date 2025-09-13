defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 12 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Se tiene una lista de palabras clave (keyword list) que representa un producto con su nombre, precio y stock
  Se obtiene el valor asociado a la clave :precio usando Keyword.get/2 y se imprime el resultado
  """
  def main() do
    keyword_list = [nombre: "Camisa", precio: 40000, stock: 12]
    obtener_valor = Keyword.get(keyword_list, :precio)
    IO.inspect(obtener_valor)
  end
end

Main.main()
