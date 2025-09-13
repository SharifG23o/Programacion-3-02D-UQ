defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 26 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Maneja un inventario de productos representados como mapas con claves :nombre, :precio y :stock
  Realiza las siguientes operaciones:
  1. Concatena dos listas de productos usando el operados ++
  2. Aumenta el precio de cada producto en un 10% usando Enum.map/2
  3. Filtra los productos con stock mayor a 5 usando Enum.filter/2
  Imprime los resultados de cada operación
  """
  def main() do
    lista_productos = [
      %{nombre: "Camiseta", precio: "200", stock: 4},
      %{nombre: "Sudadera", precio: "100", stock: 12},
      %{nombre: "Gorra", precio: "50", stock: 2}
    ]

    nuevos_productos = [
      %{nombre: "Pantaloneta", precio: "140", stock: 10},
      %{nombre: "Sombrero", precio: "500", stock: 7},
      %{nombre: "Gafas", precio: "400", stock: 1}
    ]

    nueva_lista_productos = lista_productos ++ nuevos_productos

    aumento_precio =
      Enum.map(nueva_lista_productos, fn producto ->
        precio_numerico = String.to_integer(producto.precio)
        %{producto | precio: precio_numerico * 1.10}
      end)

    filtrar_inventario = Enum.filter(nueva_lista_productos, fn producto -> producto.stock > 5 end)

    IO.inspect(nueva_lista_productos)
    IO.inspect(aumento_precio)
    IO.inspect(filtrar_inventario)
  end
end

Main.main()
