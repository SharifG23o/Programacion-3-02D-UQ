defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 28 - espacio académico programación 3.
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
    configuracion = [modo: :rapido, intentos: 3, usuario: "admin"]
    clave = aniadir_modo(configuracion)
    conversion = convertir_keyword(clave)
    verificacion = verificar_clave(conversion)
    IO.inspect(clave)
    IO.inspect(conversion)
    IO.inspect(verificacion)
    mostrar_mapa(conversion)
  end

  @doc """
  Función que añade un nuevo par clave-valor a una keyword list usando Keyword.put/3
  - Parámetros:
    - configuracion: keyword list original
  Retorna una nueva keyword list con el nuevo par clave-valor añadido y la imprime
  """
  def aniadir_modo(configuracion) do
    Keyword.put(configuracion, :clave, true)
  end

  @doc """
  Función que convierte una keyword list a mapa usando Enum.into/2
  - Parámetros:}
    - clave: keyword list a convertir
  Retorna el mapa resultante de la conversión y lo imprime
  """
  def convertir_keyword(clave) do
    Enum.into(clave, %{})
  end

  @doc """
  Función que verifica si una clave específica existe en un mapa usando Map.has_key?/2
  - Parámetros:
    - conversion: mapa a verificar
  Retorna true si la clave existe, false en caso contrario y lo imprime
  """
  def verificar_clave(conversion) do
    Map.has_key?(conversion, :usuario)
  end

  @doc """
  Función que recorrre un mapa usando Enum.each/2
  - Parámetros:
    - conversion: mapa a recorrer
  Imprime cada par clave-valor en la consola
  """
  def mostrar_mapa(conversion) do
    Enum.each(conversion, fn {clave, valor} -> IO.puts("#{clave}: #{valor}") end)
  end
end

Main.main()
