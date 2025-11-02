defmodule Main do
  def main() do
    lista = [4, 9, 2, 7, 5, 1, 3]
    calcular_minimo_maximo(lista)
  end

  # Caso base: lista vacía
  def calcular_minimo_maximo([]) do
    tupla_respuesta = {:error, :lista_vacia}
    IO.inspect(tupla_respuesta)
  end

  # Caso con un solo elemento
  def calcular_minimo_maximo([n]) do
    tupla_respuesta = {:ok, {n, n}}
    IO.inspect(tupla_respuesta)
  end

  # Caso recursivo: lista con más de un elemento
  def calcular_minimo_maximo([head | tail]) do
    {min_tail, max_tail} = calcular_minimo_maximo_rec(tail, head, head)
    tupla_respuesta = {min_tail, max_tail}
    IO.inspect(tupla_respuesta)
  end

  # Función auxiliar recursiva: mantiene el mínimo y máximo acumulados
  def calcular_minimo_maximo_rec([], min_actual, max_actual), do: {min_actual, max_actual}

  def calcular_minimo_maximo_rec([head | tail], min_actual, max_actual) do
    nuevo_min = if head < min_actual, do: head, else: min_actual
    nuevo_max = if head > max_actual, do: head, else: max_actual
    calcular_minimo_maximo_rec(tail, nuevo_min, nuevo_max)
  end
end

Main.main()
