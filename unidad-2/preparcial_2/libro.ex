defmodule Libro do

  defstruct isbn: "", titulo: "", autor: "", anio: nil, estado: nil

  def crear(isbn, titulo, autor, anio, estado) do
    %Libro{isbn: isbn, titulo: titulo, autor: autor, anio: anio, estado: estado}
  end

end
