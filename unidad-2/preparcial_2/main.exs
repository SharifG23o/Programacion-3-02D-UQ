defmodule Main do
  def main do
    catalogo_1 = crear(1, "Programacion 3", 2, "Juan Perez")
    verificar_creditos(catalogo_1)
    dispositivo = %Dispositivo{id: 123, tipo: "laptop", marca: "lenovo", estado: "dañado"}
    apto_prestamo(dispositivo)

    libro = %Libro{isbn: "123456", titulo: "El hombre que calculaba", autor: "Malba Tahan", anio: 1986, estado: true}
    marcar_prestado(libro)

    estudiante = %Estudiante{id: 1094898051, nombre: "Sharif", correo: "sharif.giraldoo@uqvirtual.edu.co", semestre: 4}
    promovido = promover_semestre(estudiante)
    validado = validar_correo(estudiante)
    IO.inspect(estudiante)
    IO.inspect(promovido)
    IO.inspect(validado)
  end

  def crear(codigo, nombre, creditos, docente) do
    %Catalogo{codigo: codigo, nombre: nombre, creditos: creditos, docente: docente}
  end

  def verificar_creditos(catalogo_1) do
    if catalogo_1.creditos >= 4 do
      nuevo_docente = %Catalogo{catalogo_1 | docente: "Maria Gomez"}
      IO.inspect(nuevo_docente)
    else
      IO.puts("El curso no tiene suficientes creditos")
    end
  end

  def apto_prestamo(dispositivo) do
    if dispositivo.estado == "nuevo" or dispositivo.estado == "usado" do
      IO.puts("El dispositivo es apto para ser prestado")
    else
      IO.puts("El dispositivo está dañado, no es apto para ser prestado")
    end
  end


  def marcar_prestado(libro) do
    if libro.estado == true do
      IO.inspect("El libro #{libro.titulo} se encuentra prestado")
    end
  end

  def promover_semestre(%Estudiante{semestre: semestre} = estudiante) do
    %Estudiante{estudiante | semestre: semestre + 1}
  end

   def validar_correo(%Estudiante{correo: correo}) do
    if String.ends_with?(correo, "@uqvirtual.edu.co") do
      "El correo institucional es válido"
    else
      "El dominio del correo no es el institucional de la UQ"
    end
  end
end

Main.main()
