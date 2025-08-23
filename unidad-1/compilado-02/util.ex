defmodule Util do #Modulo Util

  def mostrar_mensaje(mensaje) do
    mensaje
    |> IO.puts()
  end

  def pedir_informacion() do
    IO.gets("Ingrese su nombre: ")
    |> String.trim()
  end



  def show_message(message) do
    System.cmd("java", ["-cp", ".", "MENSAJE", message])
    |> elem(0)
    |> String.trim()
  end

  def  input_data(message) do
    System.cmd("java", ["-cp", ".", "INPUT", message])
    |> elem(0)
    |> String.trim()
  end



end
