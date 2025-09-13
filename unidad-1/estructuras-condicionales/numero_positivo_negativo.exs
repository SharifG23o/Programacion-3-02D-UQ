defmodule Main do
  def main() do
    numero = Util.input("Ingrese un número: ", :number)
    numero_positivo_negativo(numero)
  end

  def numero_positivo_negativo(numero) do
    if numero > 0 do
      Util.show_message("El número es positivo")
    else
      Util.show_message("El número es negativo o cero")
    end
  end
end

Main.main()
