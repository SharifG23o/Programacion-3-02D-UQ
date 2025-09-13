defmodule Main do

  def main() do
    pass = Util.input("Ingrese la contraseña: ", :string)
    condicion_unless(pass)

  end

  def condicion_unless(pass) do
    unless (pass == "1234") do

      Util.show_message("ERROR")

    else

      Util.show_message("ACCESO PERMITIDO")

    end
  end
end

Main.main()
