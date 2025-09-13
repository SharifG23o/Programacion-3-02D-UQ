
defmodule Main do


  def main() do

    numero = Util.input("Ingrese un número: ", :number)
    comparacion_cero(numero)


  end

  def comparacion_cero(numero) do

    unless (numero == 0) do
      Util.show_message("El número es diferente de cero")
    else
      Util.show_message("El número es cero")
    end
  end


end

Main.main()
