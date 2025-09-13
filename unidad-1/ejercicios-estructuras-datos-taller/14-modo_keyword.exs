defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 14 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Se tiene una keyword list con claves repetidas (:modo)
  y se obtienen todos los valores asociados a la clave :modo usando keyword.get_values/2
  Se imprime la lista de valores obtenida
  """
  def main() do
    keyword_list = [modo: :rapido, modo: :seguro, tiempo: 15]
    valores_modo = Keyword.get_values(keyword_list, :modo)
    IO.inspect(valores_modo)
  end
end

Main.main()
