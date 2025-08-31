defmodule Main do
  @moduledoc """
  Módulo Main del taller de seguimiento ejercicio 6 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-08-28
  Fecha de última modificación: 2025-08-31
  """

  @doc """
  Función principal que ejecuta el programa.
  Solicita al usuario su nombre, el peso del paquete y el tipo de envío.
  - No recibe parámetros.
  - Retorna un mensaje con el costo total del envío.
  """
  def main() do
    nombre = Util.input("Ingrese el nombre del cliente: ", :string)
    peso_paquete = Util.input("Ingrese el peso del paquete (kg): ", :number)
    tipo_envio = preguntar_tipo_envio()

    costo_envio = calcular_costo_envio(peso_paquete, tipo_envio)

    resultado = {nombre, peso_paquete, tipo_envio, costo_envio}

    mostrar_resultado(resultado)
  end

  @doc """
  Función que pregunta al usuario el tipo de envío y valida la entrada.
  - Retorna el tipo de envío si es válido, de lo contrario vuelve a preguntar.
  - Parámetros: ninguno
  """
  def preguntar_tipo_envio() do
    tipo_envio =
      Util.input(
        "Ingrese el tipo de envío (1: Económico, 2: Express, 3: Internacional): ",
        :integer
      )

    if tipo_envio in [1, 2, 3] do
      case tipo_envio do
        1 -> "Económico"
        2 -> "Express"
        3 -> "Internacional"
      end
    else
      Util.show_message("Tipo de envío no reconocido.")
      preguntar_tipo_envio()
    end
  end

  def calcular_costo_envio(peso, tipo_envio) do
    case tipo_envio do
      "Económico" ->
        peso * 5000

      "Express" ->
        peso * 8000

      "Internacional" ->
        cond do
          peso <= 5 ->
            peso * 15000

          peso > 5 ->
            peso * 12000
        end
    end
  end

  @doc """
  Función que muestra un mensaje con la información del envío y su costo.
  - Parámetros:
    - tupla: tupla que contiene el nombre del cliente, peso del paquete, tipo de envío y costo total.
  - Retorna un mensaje con la información del envío y su costo.
  """
  def mostrar_resultado({cliente, peso, tipo, costo}) do
    costo_str = :erlang.float_to_binary(costo * 1.0, [:compact, decimals: 0])
    peso_str = :erlang.float_to_binary(peso * 1.0, [:compact, decimals: 2])

    Util.show_message("""
    Resumen del envío:
    Cliente: #{cliente}
    Peso del paquete: #{peso_str} kg
    Tipo de envío: #{tipo}
    Costo total: $#{costo_str}
    """)
  end
end

Main.main()
