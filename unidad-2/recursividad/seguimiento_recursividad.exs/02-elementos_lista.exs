defmodule Main do
  def main do
    list = [1, 2, 3, 4, 5]
    result = elementos_lista(list, 0)
    IO.puts("Resultado: #{result}")
  end

  def elementos_lista([], count), do: count

  def elementos_lista([_ | tail], count) do
    elementos_lista(tail, count + 1)
  end
end

Main.main()
