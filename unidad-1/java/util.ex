defmodule Util do
  @moduledoc """
  Utility module for displaying messages using java.
  """

  @doc """
    Displays a message using a Java dialog.
  """
  def show_message(message) do
    System.cmd("java", ["-cp", ".", "Mensaje", message])
  end

  @doc """
    Prompts the user for input using a Java dialog and returns the input.
  """
  def input_data(data) do
    System.cmd("java", ["-cp", ".", "Mensaje", "input", data])
    |> elem(0)
    |> String.trim()
  end

  def input(message, type) when type == :string do
    message
    |> input_data()
  end

  def input(message, type) when type == :integer do
    message
    |> input(:string)
    |> String.to_integer()
  end


  def input(message,type) when type == :float do
    message
    |> input(:string)
    |> String.to_float()

  end


  def numero_positivo_negativo(n) when n > 0, do: "Positivo"
  def numero_positivo_negativo(n) when n == 0, do: "Cero"
  def numero_positivo_negativo(n) when n < 0, do: "Negativo"


end
