defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 11 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Se tiene una keyword list que representa un producto con sus atributos
  Se imprime la keyword list
  """
  def main() do
    producto = [nombre: "Laptop", precio: 5_000_000, stock: 50]
    IO.puts(producto)
  end
end

Main.main()
