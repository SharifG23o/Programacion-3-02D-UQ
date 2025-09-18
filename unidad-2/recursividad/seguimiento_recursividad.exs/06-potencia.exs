defmodule Potencia do
  def main() do
    IO.puts(calcular_potencia(2, 4))
  end

  def calcular_potencia(0, _), do: 0

  def calcular_potencia(_, 0), do: 1

  def calcular_potencia(numero, potencia), do: numero*calcular_potencia(numero, potencia - 1)
end
Potencia.main()
