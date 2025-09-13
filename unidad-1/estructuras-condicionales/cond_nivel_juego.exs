

defmodule Main do
  def main() do

    nivel_juego = Util.input("Ingrese el nivel del juego: ", :number)
    condicion_nivel_juego(nivel_juego)
  end

  def condicion_nivel_juego(nivel_juego) do
    cond do
      nivel_juego <3 -> Util.show_message("Has ganado + 10 puntos")
      nivel_juego >=3 and nivel_juego <= 6 -> Util.show_message("Has ganado + 20 puntos")
      nivel_juego > 6 -> Util.show_message("Has ganado + 50 puntos")
      true -> Util.show_message("Nivel inválido")
    end
  end
end

Main.main()
