defmodule EjercicioEdad do


  def main() do
    edad = Util.input("Ingrese su edad: ", :integer)
    ejercicio_edad(edad)
  end



  def ejercicio_edad(edad) do
    if edad >= 18 do
      Util.show_message("Eres mayor de edad")
    else
      Util.show_message("Eres menor de edad")
    end
  end
end

EjercicioEdad.main()
