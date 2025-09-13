defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 30 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Se define una lista de mapas que representan ventas de productos
  Se llaman las funciones para calcular estadísticas de ventas e imprimir los resultados
  """
  def main() do
    ventas = [
      %{producto: "Laptop", monto: 2500},
      %{producto: "Mouse", monto: 500},
      %{producto: "Teclado", monto: 1000}
    ]

    calcular_ventas(ventas)
    agrupados = agrupar_ventas_producto(ventas)
    convertir_mapas(agrupados)
    mayor_venta(ventas)
  end

  @doc """
  Función que calcula el total de ventas usando Enum.reduce/3 e imprime el resultado
  - Parámetros:
    - ventas: lista de mapas con las ventas
  Retorna la suma total de los montos de las ventas e imprime el resultado
  """
  def calcular_ventas(ventas) do
    total_ventas = Enum.reduce(ventas, 0, fn %{monto: monto}, acc -> acc + monto end)
    IO.inspect(total_ventas)
  end

  @doc """
  Función que agrupa las ventas por producto usando Enum.group_by/2 e imprime el resultado
  - Parámetros:
    - ventas: lista de mapas con las ventas
  Retorna un mapa donde las claves son los nombre de los productos y los valores son listas de ventas de esos
  productos e imprime el resultado
  """
  def agrupar_ventas_producto(ventas) do
    agrupados = Enum.group_by(ventas, fn ventas -> ventas.producto end)
    IO.inspect(agrupados)
  end

  @doc """
  Función que convierte el mapa agrupado de ventas a una lista de mapas usando Enum.into/2 e imprime el resultado
  - Parámetros:
    - agrupados: mapa con las ventas agrupadas por producto
  Retorna una lista de mapas con las ventas agrupadas e imprime el resultado
  """
  def convertir_mapas(agrupados) do
    convertido = Enum.into(agrupados, [])
    IO.inspect(convertido)
  end

  @doc """
  Función que encuentra la venta con el mayor monto usando Enum.max_by/2 e imprime el resultado
  - Parámetros:
    - ventas: lista de mapas de las ventas
  Retorna el mapa de la venta con el mayor monto e imprime el resultado
  """
  def mayor_venta(ventas) do
    producto_mayor_ventas = Enum.max_by(ventas, fn %{monto: monto} -> monto end)
    IO.inspect(producto_mayor_ventas)
  end
end

Main.main()
