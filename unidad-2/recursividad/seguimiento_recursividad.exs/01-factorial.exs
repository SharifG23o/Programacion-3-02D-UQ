defmodule Main do
  def main do
    result = Main.of(3)
    IO.puts("Resultado: #{result}")
  end

  def of(0), do: 1

  def of(n) when n > 0 do
    n * of(n - 1)
  end
end

Main.main()
