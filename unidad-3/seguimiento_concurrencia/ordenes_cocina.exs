defmodule Main do
  @ordenes [
    %{id: 1, item: "Café Americano", prep_ms: 800},
    %{id: 2, item: "Capuccino", prep_ms: 1200},
    %{id: 3, item: "Té Verde", prep_ms: 600},
    %{id: 4, item: "Chocolate", prep_ms: 1000},
    %{id: 5, item: "Latte", prep_ms: 900}
  ]

  def preparar(%{id: id, item: item, prep_ms: tiempo}) do
    :timer.sleep(tiempo)
    IO.puts("Orden #{id} (#{item}) lista en #{tiempo} ms.")
    {id, item, tiempo}
  end

  def pipeline_secuencial(ordenes) do
    Enum.map(ordenes, &preparar/1)
  end

  def pipeline_concurrente(ordenes) do
    ordenes
    |> Enum.map(fn o -> Task.async(fn -> preparar(o) end) end)
    |> Enum.map(&Task.await(&1))
  end

  def main do
    IO.puts("\n===== EJERCICIO 3: PIPELINE DE COCINA =====\n")

    IO.puts("→ Preparando órdenes SECUENCIALMENTE...\n")
    t_sec = Benchmark.determinar_tiempo_ejecucion({Main, :pipeline_secuencial, [@ordenes]})
    IO.puts("\nTiempo SECUENCIAL: #{t_sec} µs\n")

    IO.puts("→ Preparando órdenes CONCURRENTEMENTE...\n")
    t_conc = Benchmark.determinar_tiempo_ejecucion({Main, :pipeline_concurrente, [@ordenes]})
    IO.puts("\nTiempo CONCURRENTE: #{t_conc} µs\n")

    speedup = Benchmark.calcular_speedup(t_conc, t_sec)
    mensaje = Benchmark.generar_mensaje(t_conc, t_sec)

    IO.puts("===== RESULTADOS =====")
    IO.puts("SpeedUp obtenido: #{Float.round(speedup, 2)}x")
    IO.puts(mensaje)
    IO.puts("Simulación terminada.\n")
  end
end

Main.main()
