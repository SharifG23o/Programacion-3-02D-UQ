defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 15 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  """
  def main() do
    keyword_list = [usuario: "Carlos", activo: true, rol: "admin"]

    iterar_keyword(keyword_list)
  end

  @doc """
  Función que itera sobre una keyword list usando Enum.each/2
  Se imprime cada par clave-valor en la consola
  """
  def iterar_keyword(keyword_list) do
    Enum.each(keyword_list, fn {clave, valor} ->
      IO.puts("#{clave}: #{valor}")
    end)
  end
end

Main.main()
