Code.require_file("benchmark.ex")

defmodule NodoCliente do
  alias NodoServidor.Car

  @nodo_cliente :"cliente@192.168.137.239"
  @nodo_servidor :"servidor@192.168.137.1"
  @nombre_proceso :servicio_carrera

  # Datos de los autos
  @autos [
    %Car{id: 1, piloto: "Hamilton", pit_ms: 200, vuelta_ms: 700},
    %Car{id: 2, piloto: "Verstappen", pit_ms: 250, vuelta_ms: 650},
    %Car{id: 3, piloto: "Alonso", pit_ms: 300, vuelta_ms: 800},
    %Car{id: 4, piloto: "Leclerc", pit_ms: 220, vuelta_ms: 720}
  ]

  def main() do
    IO.puts("\n🚦 SE INICIA EL CLIENTE DE CARRERA\n")
    iniciar_nodo(@nodo_cliente)

    case establecer_conexion(@nodo_servidor) do
      true ->
        IO.puts("✅ Conectado con el nodo servidor #{@nodo_servidor}\n")
        ejecutar_carrera()

      false ->
        IO.puts("❌ No se pudo conectar con el nodo servidor.")
    end
  end

  # -----------------------------------------------------
  # Inicializar nodo cliente
  defp iniciar_nodo(nombre) do
    Node.start(nombre)
    Node.set_cookie(:my_cookie)
  end

  defp establecer_conexion(nodo_remoto), do: Node.connect(nodo_remoto)

  # -----------------------------------------------------
  defp ejecutar_carrera() do
    tiempo_seq = Benchmark.determinar_tiempo_ejecucion({__MODULE__, :carrera_secuencial, [@autos]})
    tiempo_conc = Benchmark.determinar_tiempo_ejecucion({__MODULE__, :carrera_distribuida, [@autos]})

    mensaje = Benchmark.generar_mensaje(tiempo_conc, tiempo_seq)
    IO.puts("\n📈 #{mensaje}")
  end

  # -----------------------------------------------------
  # Secuencial
  def carrera_secuencial(autos) do
    autos
    |> Enum.map(fn car ->
      total = simular_local(car)
      {car.piloto, total}
    end)
    |> Enum.sort_by(fn {_piloto, total} -> total end)
    |> imprimir_ranking("SECUENCIAL")
  end

  # -----------------------------------------------------
  # Concurrente distribuida (cliente-servidor)
  def carrera_distribuida(autos) do
    Enum.each(autos, fn car ->
      send({@nombre_proceso, @nodo_servidor}, {self(), {:simular, car}})
    end)

    send({@nombre_proceso, @nodo_servidor}, {self(), :fin})
    recibir_resultados(length(autos))
    |> Enum.sort_by(fn {_piloto, total} -> total end)
    |> imprimir_ranking("CONCURRENTE DISTRIBUIDA")
  end

  defp recibir_resultados(0), do: []
  defp recibir_resultados(n) do
    receive do
      :fin -> []
      {:resultado, piloto, total} ->
        [{piloto, total} | recibir_resultados(n - 1)]
    end
  end

  # -----------------------------------------------------
  # Simulación local
  defp simular_local(%Car{piloto: piloto, pit_ms: pit, vuelta_ms: vuelta}) do
    for _ <- 1..3, do: :timer.sleep(vuelta)
    :timer.sleep(pit)
    total = pit + 3 * vuelta
    IO.puts("🏁 #{piloto} terminó en #{total} ms (Local)")
    total
  end

  defp imprimir_ranking(ranking, titulo) do
    IO.puts("\n🏆 Resultados #{titulo}:")
    Enum.with_index(ranking, 1)
    |> Enum.each(fn {{piloto, total}, i} ->
      IO.puts("  #{i}. #{piloto} -> #{total} ms")
    end)
    ranking
  end
end

NodoCliente.main()
