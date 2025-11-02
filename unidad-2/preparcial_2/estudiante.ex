defmodule Estudiante do

  defstruct id: nil, nombre: "", correo: "", semestre: nil

  def crear_estudiante(id, nombre, correo, semestre) do
    %Estudiante{id: id, nombre: nombre, correo: correo, semestre: semestre}
  end
end
