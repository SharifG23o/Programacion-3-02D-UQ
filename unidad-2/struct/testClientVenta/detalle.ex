defmodule Detalle do
  defstruct producto: %Producto{}, cantidad: 0

  def calcular_subtotal(%Detalle{producto: producto, cantidad: cantidad}) do
    producto.precio * cantidad
  end

  def crear(producto, cantidad) do
    %Detalle{producto: producto, cantidad: cantidad}
  end



  def escribir_csv_detalle(list_detalles, nombre_archivo) do
    headers = "Producto, Precio, Cantidad\n"

    contenido =
      Enum.map(list_detalles,
        fn %Detalle{producto: %Producto{nombre: nombre, precio: precio}, cantidad: cantidad} ->
        "#{nombre}, #{precio}, #{cantidad}\n"
      end)
      |> Enum.join()

    File.write(nombre_archivo, headers <> contenido)
  end


  def leer_csv_detalle(nombre_archivo) do
    case File.read(nombre_archivo) do
      {:ok, contenido} ->
        String.split(contenido, "\n")
        |> Enum.map(fn line ->
          case String.split(line, ", ") do
            ["Producto", "Cantidad"] -> nil
            [nombre_producto, precio_str, cantidad_str] ->
              with {precio, ""} <- Float.parse(precio_str),
                   {cantidad, ""} <- Integer.parse(cantidad_str) do
                producto = %Producto{nombre: nombre_producto, precio: precio}
                %Detalle{producto: producto, cantidad: cantidad}
              else
                _ -> nil
              end
            _ -> nil
          end
        end)
        |> Enum.filter(& &1)

      {:error, reason} ->
        IO.puts("Error al leer el archivo: #{reason}")
        []
    end
  end
end
