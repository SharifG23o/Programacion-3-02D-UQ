defmodule Ejercicio do
  def main do
    lista = [1, 0,-2]
    identificar_signo(lista)
    calcular_time_ejecucion(lista)
  end

  def identificar_signo(lista) do
    Enum.each(lista, fn n ->
      cond do
        n > 0 -> IO.puts("#{n} es Positivo")
        n < 0 -> IO.puts("#{n} es Negativo")
        true -> IO.puts("#{n} es Cero")
      end
    end)
  end

  def calcular_time_ejecucion(lista) do
    t = Benchmark.determinar_tiempo_ejecucion({_MODULE_, :identificar_signo, [lista]})
    IO.puts("El tiempo de ejcucion fue de: #{inspect(t)}")
  end



end

Ejercicio.main()
