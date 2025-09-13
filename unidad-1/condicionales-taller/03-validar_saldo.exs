defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento ejercicio 3 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-03
  Fecha de última modificación: 2025-09-03
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Se ingresa el monto a retirar y el saldo de la cuenta
  Se valida si se realiza o no el retiro
  """
  def main() do
    monto_retiro = Util.input("Por favor, ingrese el monto a retirar: ", :number)

    saldo_cuenta =
      Util.input(
        "Por favor, ingrese el saldo de su cuenta (Según la última transacción): ",
        :number
      )

    validar_saldo(monto_retiro, saldo_cuenta)
  end

  @doc """
  Función que valida el saldo para realizar el retiro
  - Parámetros:
   - monto_retiro = cantidad total de dinero a retirar (number)
   - saldo_cuenta = cantidad disponible de dinero que hay en la cuenta (number)
  Muestra finalmente si hubo un saldo insuficiente o si el retiro fue exitoso
  """
  def validar_saldo(monto_retiro, saldo_cuenta) do
    if saldo_cuenta >= monto_retiro do
      monto_final = saldo_cuenta - monto_retiro

      Util.show_message("Retiro exitoso. Su nuevo saldo es: #{monto_final}")
    else
      Util.show_message("¡Fondos Insuficientes!")
    end
  end
end

Main.main()
