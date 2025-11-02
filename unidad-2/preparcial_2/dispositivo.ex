defmodule Dispositivo do

  defstruct id: nil, tipo: "", marca: "", estado: ""


  def crear_dispositivo(id, tipo, marca, estado) do
    %Dispositivo{id: id, tipo: tipo, marca: marca, estado: estado}
  end
end
