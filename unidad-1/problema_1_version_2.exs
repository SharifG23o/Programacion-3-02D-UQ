

defmodule Problemas do

  defp mostrar_mensaje_privado(mensaje) do
    mensaje
    |> IO.puts()
  end
  def invocacion_privado() do
    mostrar_mensaje_privado("Bienvenidos a la empresa Once Ltda")
  end
end

Problemas.invocacion_privado()
