defmodule Main do
  def main() do
    nota = Util.input("Ingrese la nota del estudiante: ", :number)
    condicion_cond(nota)

  end

  def condicion_cond(nota) do
    cond do
      nota >= 4.5 -> Util.show_message("Excelente")
      nota >= 3.0 -> Util.show_message("Aprobado")
      nota < 3.0 -> Util.show_message("Reprobado")
      true -> Util.show_message("Nota inválida")
    end
  end
end

Main.main()
