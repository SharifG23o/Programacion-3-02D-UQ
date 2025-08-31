defmodule Main do
  @moduledoc """
  Módulo Main del taller de seguimiento ejercicio 4 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-08-28
  Fecha de última modificación: 2025-08-31
  """
  @doc """
  Función principal que ejecuta el programa.
  Solicita al usuario su nombre, el salario base y las horas extras trabajadas.
  - No recibe parámetros.
  - Retorna un mensaje con el salario total.
  """
  def main() do
    nombre = Util.input("Ingrese el nombre del empleado: ", :string)
    salario_base = Util.input("Ingrese el salario base del empleado: ", :number)
    horas_extras = Util.input("Ingrese la cantidad de horas extras trabajadas: ", :integer)
    salario_total = calcular_salario(salario_base, horas_extras)

    salario_str = :erlang.float_to_binary(salario_total, [:compact, decimals: 2])
    Util.show_message("El salario total de #{nombre} es de $#{salario_str}")
  end

  @doc """
  Función que calcula el salario total de un empleado.
  - Parámetros:
    - salario_base: número que representa el salario base del empleado.
    - horas_extras: número entero que representa la cantidad de horas extras trabajadas.
  - Retorna el salario total del empleado.
  """
  def calcular_salario(salario_base, horas_extras) do
    hora_ordinaria = 10000
    salario_total = salario_base + horas_extras * hora_ordinaria * 1.5
    salario_total
  end
end

Main.main()
