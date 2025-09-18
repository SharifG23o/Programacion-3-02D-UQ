defmodule Main do
  def main do
    result = Main.elementos_lista([1, 2, 3, 4, 5])
    IO.puts("Resultado: #{result}")
  end

  def elementos_lista([], count), do: count

  def elementos_lista([_ | tail], count) do
    elementos_lista(tail, count + 1)
  end
end

Main.main()
