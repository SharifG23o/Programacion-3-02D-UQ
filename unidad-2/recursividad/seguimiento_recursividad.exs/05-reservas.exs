defmodule Reservas do

  def main() do
    reservas = [%{cliente: "jose", dias: 3}, %{cliente: "Maria", dias: 2}, %{cliente: "Juan", dias: 5}]
    IO.puts("El total de dias: #{calcular_dias(reservas)}")
  end

  def calcular_dias([%{dias: d} | f]) do
    d + calcular_dias(f)
  end

  def calcular_dias([]), do: 0

end
Reservas.main()
