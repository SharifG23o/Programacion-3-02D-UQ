defmodule Main do
  def main do
    #Creación de un struct
    u1 = %User{name: "Alberto", pass: "123"}
    IO.inspect(u1)

    #Acceso de la información de un struct
    IO.puts(u1.name)

    #Modificación de un struct
    u2 = %User{u1 | pass: "456"}
    IO.inspect(u2)
  end
end

Main.main()
