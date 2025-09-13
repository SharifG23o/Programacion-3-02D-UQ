defmodule Main do

  def main() do

    numerador = Util.input("Ingrese el numerador: ", :number)
    denominador = Util.input("Ingrese el denominador: ", :number)
    condicion_division(numerador, denominador)

  end

  def condicion_division(numerador, denominador) do
    case denominador do

      0 -> Util.show_message("No se puede dividir por cero")

      _ when rem(numerador, denominador) == 0 ->

        resultado = div(numerador, denominador)
        Util.show_message("El resultado de la división es: #{resultado}")

      _ ->

        resultado = numerador / denominador
        Util.show_message("El resultado de la división es: #{resultado}")
    end
  end
end

Main.main()
