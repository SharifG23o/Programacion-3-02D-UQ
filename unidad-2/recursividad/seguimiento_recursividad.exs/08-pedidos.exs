defmodule Pedidos do
  def main() do
    pedidos = [%{producto: "sal", cantidad: 2}, %{producto: "mani", cantidad: 1}, %{producto: "chocolatina", cantidad: 5}]
    IO.puts("El total de pedidos es: #{calcular_total(pedidos)}")
  end

  def calcular_total([]), do: 0

  def calcular_total([%{cantidad: c} | f]) do
     c + calcular_total(f)
  end
end
Pedidos.main()
