defmodule NodoServidor do
  defmodule Car do
    defstruct [:id, :piloto, :pit_ms, :vuelta_ms]
  end

  @nodo_servidor :"servidor@192.168.137.1"
  @nombre_proceso :servicio_carrera

  def main() do
    IO.puts("\n🏎️ SE INICIA EL SERVIDOR DE CARRERA\n")
    iniciar_nodo(@nodo_servidor)
    registrar_servicio(@nombre_proceso)
    procesar_mensajes()
  end

  defp iniciar_nodo(nombre) do
    Node.start(nombre)
    Node.set_cookie(:my_cookie)
  end

  defp registrar_servicio(nombre_servicio_local),
    do: Process.register(self(), nombre_servicio_local)

  defp procesar_mensajes() do
    receive do
      {productor, :fin} ->
        send(productor, :fin)
        procesar_mensajes()

      {productor, {:simular, car}} ->
        total = simular_carrera(car)
        send(productor, {:resultado, car.piloto, total})
        procesar_mensajes()
    end
  end

  defp simular_carrera(%Car{piloto: piloto, pit_ms: pit, vuelta_ms: vuelta}) do
    for _ <- 1..3, do: :timer.sleep(vuelta)
    :timer.sleep(pit)
    total_ms = pit + 3 * vuelta
    IO.puts("🏁 #{piloto} completó la carrera en #{total_ms} ms (Servidor)")
    total_ms
  end
end

NodoServidor.main()
