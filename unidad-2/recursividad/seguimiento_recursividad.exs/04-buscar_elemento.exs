defmodule Main do
  def buscar_elemento(_elemento, []), do: false
  def buscar_elemento(elemento, [head | _tail]) when head == elemento, do: true
  def buscar_elemento(elemento, [_head | tail]), do: buscar_elemento(elemento, tail)

  def main() do
    lista = ["Juan", 20, :ok]
    elemento_encontrado = buscar_elemento(30, lista)
    IO.puts("Lista: #{inspect(lista)}")
    IO.puts("¿El elemento se encuentra en la lista?: #{elemento_encontrado}")
  end
end

Main.main()
