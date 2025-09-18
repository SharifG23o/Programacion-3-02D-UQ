defmodule Suma do

  # Caso base: cuando n = 0
  def suma_numeros(0) do
    IO.puts("La suma de números es cero")
    0
  end

  # Caso recursivo
  def suma_numeros(n) when n > 0 do
    total = n + suma_numeros(n - 1)
    IO.puts("Suma parcial: #{total}")
    total
  end

  # Función principal que llama a la recursiva
  def main do
    suma_numeros(5)
  end
end

Suma.main()
