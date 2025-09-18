
defmodule Main do


  defp calcular_balance_rec([]), do: 0

  defp calcular_balance_rec([head | tail]) do
    head + calcular_balance_rec(tail)
  end


  def main() do
    transacciones = [100, 200, 800, -500, -100]

    balance = calcular_balance_rec(transacciones)

    IO.puts("Lista de transacciones: #{inspect(transacciones)}")
    IO.puts("Balance final: #{balance}")
  end
end


Main.main()
