


defmodule Ejercicio3 do
  @moduledoc """
  Módulo del ejercicio 3 del seguimiento
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-08-21
  Fecha de última modificación: 2025-08-23
  """


  @doc """
  Función que permite calcular el salario total de un empleado basado en las horas trabajadas, el valor por hora y el salario base de la empresa.
  Si el empleado trabaja más de 160 horas, las horas extra se pagan a una tarifa del 125% del valor por hora

  ## Parámetros

    - Ninguno

  """
  def calcular_salario_horas_trabajadas() do

    nombre_empleado = Util.input_data("Ingrese el nombre del empleado: ")

    horas_trabajadas =
      Util.input_data("Ingrese el número de horas trabajadas: ")
      |> String.to_integer()

    valor_hora =
      Util.input_data("Ingrese el valor por hora: ")
      |> String.to_float()

    salario_base =
      Util.input_data("Ingrese el salario base de la empresa: ")
      |> String.to_float()


    pago_horas_extra =
      if horas_trabajadas > 160 do
        horas_extra = horas_trabajadas - 160
        horas_extra * (valor_hora * 1.25)
      else
        0
      end


    salario_total = salario_base + pago_horas_extra

    Util.show_message(
      "El salario total del empleado #{nombre_empleado} es: #{salario_total}"
    )
  end
end

Ejercicio3.calcular_salario_horas_trabajadas()
