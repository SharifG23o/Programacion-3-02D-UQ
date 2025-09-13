
defmodule Main do

  def main() do

    codigo_triage = Util.input("Ingrese el código de triage (verde, amarillo, rojo): ", :string)
    condicion_case(codigo_triage)


  end

  def condicion_case(codigo_triage) do
    case codigo_triage do
      "verde" -> Util.show_message("Atención en 60 minutos")
      "amarillo" -> Util.show_message("Atención en 30 minutos")
      "rojo" -> Util.show_message("Atención inmediata")
      _ -> Util.show_message("Código de triage no válido")
    end
  end
end

Main.main()
