defmodule Main do
  @moduledoc"""
  Módulo Main del Taller de seguimiento Estructuras ejercicio 6 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Accede a un elemento específico de una tupla usando la función elem/2 e imprime el resultado
  """
  def main() do

    tupla = {19, "Sharif", :ok}
    elemento = elem(tupla, 1)
    IO.puts(elemento)
  end
end

Main.main()
