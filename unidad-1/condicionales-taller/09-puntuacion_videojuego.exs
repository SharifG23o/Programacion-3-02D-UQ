defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento ejercicio 9 - espacio académico programación 3.
  Programa que recibe un nivel de enemigo derrotado en un videojuego y asigna
  determinada cantidad correspondiente de puntos en base al nivel
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-03
  Fecha de última modificación: 2025-09-03
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Recibe el nivel de enemigo derrotado en el videojuego
  Muestra la cantidad de puntos asignados
  """
  def main() do
    nivel_enemigo_derrotado =
      Util.input("Ingrese el nivel del enemigo que ha derrotado", :integer)

    asignacion_puntos(nivel_enemigo_derrotado)
  end

  @doc """
  Función que asigna determinada cantidad de puntos en base al nivel del enemigo derrotado
  - Parámetros:
   - nivel_enemigo_derrotado: Entero que representa el nivel del oponente en el videojuego
  Retorna la cantidad de puntos obtenidos por vencer al rival de x nivel
  Se hace uso de la estructura condicional cond
  """
  def asignacion_puntos(nivel_enemigo_derrotado) do
    cond do
      nivel_enemigo_derrotado < 3 ->
        Util.show_message("Has ganado (+10) puntos")

      nivel_enemigo_derrotado > 3 and nivel_enemigo_derrotado < 6 ->
        Util.show_message("Has ganado (+20) puntos")

      nivel_enemigo_derrotado > 6 ->
        Util.show_message("Has ganado (+50) puntos")
    end
  end
end

Main.main()
