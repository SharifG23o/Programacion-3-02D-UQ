defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 13 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Se tiene una lista de palabras clave (keyword list) y se añade un nuevo par clave-valor usando Keyword.put/3
  Se imprime la lista de palabras clave resultante
  """
  def main() do
    keyword_list = [nombre: "Camisa", precio: 40000, stock: 12]

    new_keyword = Keyword.put(keyword_list, :color, "Azul")
    IO.inspect(new_keyword)
  end
end

Main.main()
