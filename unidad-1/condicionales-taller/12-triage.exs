defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento ejercicio 12 - espacio académico programación 3.
  Programa que clasifica el nivel de atención de los pacientes según el código triage ingresado
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-02
  Fecha de última modificación: 2025-09-03
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Un color del código triage es ingresado
  Se muestra finalmente el nivel de atención requerido acorde al parámetro ingresado
  """
  def main() do
    color_triage =
      Util.input("Ingrese el color del código Triage (rojo / amarillo / verde)", :string)

    nivel_atencion(color_triage)
  end

  @doc """
  Función que determina el nivel de atención necesario según el código triage ingresado ("rojo","amarillo","verde")
  - Parámetros:
   - color_triage: cadena de texto con el código correspondiente
  Retorna el nivel de atención requerido por el paciente
  Se hace uso de la estructura condicional case
  """
  def nivel_atencion(color_triage) do
    case color_triage do
      "rojo" -> Util.show_message("Atención Inmediata")
      "amarillo" -> Util.show_message("Atención en menos de 30 minutos")
      "verde" -> Util.show_message("Atención en sala general")
      _ -> Util.show_message("Código no válido")
    end
  end
end

Main.main()
