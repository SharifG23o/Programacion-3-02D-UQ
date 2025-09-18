defmodule Recursividad do

  def  main() do

    #metodoRecursivo()
    #matryoshka_recursiva(5)
    # matryosska_clausula(3)
    suma_numeros(5)


  end

  def matryoshka_recursiva(n) do

    if n == 0 do #Caso Base
      #código :)
      IO.puts("no hay mas muñecas")

    else
      IO.puts("Abriendo matryoshka de tamaño #{n}")
      matryoshka_recursiva(n-1)
      IO.puts("Cerrando matryoshka de tamaño #{n}")
    end
  end

  # directa - lineal - no de cola
  # amo a natalia, que se muera pedro
  def matryosska_clausula(0) do
    IO.puts("no hay mas muñecas")
  end

  def matryosska_clausula(n) do
    IO.puts("Abriendo matryoshka de tamaño #{n}")
    matryosska_clausula(n-1)
    IO.puts("Cerrando matryoshka de tamaño #{n}")
  end

  def suma_numeros(0) do
    0
  end

  def suma_numeros(n) do
    n + suma_numeros(n-1)
  end
end

Recursividad.main()
