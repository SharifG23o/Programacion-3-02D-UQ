


defmodule Ejercicio2 do
  @moduledoc """
  Módulo del ejercicio 2 del seguimiento
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-08-21
  Fecha de última modificación: 2025-08-22
  """

  @doc """
  Función que permite ingresar una palabra y contar sus caracteres además de quitar
  los espacios que hayan en blanco

  ## Parámetros

    - No recibe
    
  """
  def contar_caracteres_palabra() do
    palabra = Util.input_data("Ingrese una palabra contar sus caracteres: ")
    palabra_quitar_espacios = String.replace(palabra, " ", "")
    caracteres = String.length(palabra_quitar_espacios)
    Util.show_message("El número de caracteres de la palabra '#{palabra}' es: (#{caracteres})")
  end

end

Ejercicio2.contar_caracteres_palabra()
