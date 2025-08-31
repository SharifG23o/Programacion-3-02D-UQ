defmodule Main do
  @moduledoc """
  Módulo Main del taller de seguimiento ejercicio 5 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-08-28
  Fecha de última modificación: 2025-08-31
  """

  @doc """
  Función principal que ejecuta el programa.
  Solicita al usuario su nombre, la placa del vehículo, el tipo de vehículo y el peso del vehículo.
  """
  def main() do
    placa = Util.input("Ingrese la placa del vehículo: ", :string)
    tipo_vehiculo = preguntar_tipo_vehiculo()
    peso_vehiculo = Util.input("Ingrese el peso del vehículo (toneladas): ", :number)
    tupla = determinar_tipo_vehiculo(placa, tipo_vehiculo, peso_vehiculo)
    mostrar_mensaje(tupla)
  end

  @doc """
  Función que pregunta al usuario el tipo de vehículo y valida la entrada.
  - Retorna el tipo de vehículo si es válido, de lo contrario vuelve a preguntar.
  - Parámetros: ninguno
  """
  def preguntar_tipo_vehiculo() do
    tipo_vehiculo = Util.input("Ingrese el tipo de vehículo (carro/moto/camion): ", :string)

    if tipo_vehiculo in ["carro", "moto", "camion"] do
      tipo_vehiculo
    else
      Util.show_message("Tipo de vehículo no reconocido.")
      preguntar_tipo_vehiculo()
    end
  end

  @doc """
  Función que determina la tarifa del vehículo según su tipo y peso.
  - Parámetros:
    - placa: cadena de texto que representa la placa del vehículo.
    - tipo: cadena de texto que representa el tipo de vehículo (carro, moto, camión).
    - peso: número que representa el peso del vehículo en toneladas.
  - Retorna una tupla con la placa, tipo, peso y tarifa del vehículo.
  """
  def determinar_tipo_vehiculo(placa, "carro", peso), do: {placa, "carro", peso, 10000}
  def determinar_tipo_vehiculo(placa, "moto", peso), do: {placa, "moto", peso, 5000}

  def determinar_tipo_vehiculo(placa, "camion", peso),
    do: {placa, "camion", peso, 20000 + 2000 * peso}

  def determinar_tipo_vehiculo(placa, tipo, peso), do: {placa, tipo, peso, 0}

  @doc """
  Función que muestra un mensaje con la información del vehículo y su tarifa.
  - Parámetros:
    - tupla: tupla que contiene la placa, tipo, peso y tarifa del vehículo.
  - Retorna un mensaje con la información del vehículo y su tarifa.
  """
  def mostrar_mensaje(tupla) do
    Util.show_message(
      "La tarifa para el vehículo #{elem(tupla, 0)} (#{elem(tupla, 1)}) es: #{elem(tupla, 3)}"
    )
  end
end

Main.main()
