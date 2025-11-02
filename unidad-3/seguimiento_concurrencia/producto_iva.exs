defmodule Main do


  @cantidad_productos 10



  def calcular_precio(%Producto{precio_sin_iva: precio_sin_iva, iva: iva}) do
    precio_sin_iva * (1 + iva)
  end

  def calcular_precios_secuencial(productos) do
    Enum.map(productos, fn p ->
      precio_final = calcular_precio(p)
      {p.nombre, Float.round(precio_final, 2)}
    end)
  end

  def calcular_precios_concurrente(productos) do
    productos
    |> Enum.map(fn p ->
      Task.async(fn ->
        precio_final = calcular_precio(p)
        {p.nombre, Float.round(precio_final, 2)}
      end)
    end)
    |> Enum.map(&Task.await(&1))
  end

  def generar_productos() do
    for i <- 1..@cantidad_productos do
      %Producto{
        nombre: "Producto #{i}",
        stock: Enum.random(1..100),
        precio_sin_iva: Enum.random(1000..5000) / 1.0,
        iva: 0.19
      }
    end
  end

  def main do

    IO.puts("\n===== EJERCICIO 2: CÁLCULO DE PRECIOS CON IVA =====")

    productos = generar_productos()
    IO.puts("→ Procesando #{@cantidad_productos} productos...\n")

    tiempo_sec = Benchmark.determinar_tiempo_ejecucion({Main, :calcular_precios_secuencial, [productos]})
    IO.puts("Tiempo SECUENCIAL: #{tiempo_sec} µs")

    tiempo_conc = Benchmark.determinar_tiempo_ejecucion({Main, :calcular_precios_concurrente, [productos]})
    IO.puts("Tiempo CONCURRENTE (Task.async): #{tiempo_conc} µs")

    speedup = Benchmark.calcular_speedup(tiempo_conc, tiempo_sec)
    mensaje = Benchmark.generar_mensaje(tiempo_conc, tiempo_sec)

    IO.puts("\n===== RESULTADOS =====")
    IO.puts("SpeedUp obtenido: #{Float.round(speedup, 2)}x")
    IO.puts(mensaje)
    IO.puts("Simulación finalizada correctamente.\n")
  end
end

Main.main()
