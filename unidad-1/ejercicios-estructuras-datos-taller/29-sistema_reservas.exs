defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 29 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  """
  def main() do
    lista_reservas = [
      %{cliente: "Sharif", habitacion: 505, dias: 3}
    ]

    nuevas_reservas = crear_reservas(lista_reservas)

    dias_reservados = calcular_dias_reserva(nuevas_reservas)

    IO.inspect(lista_reservas)
    IO.inspect(nuevas_reservas)
    IO.inspect(dias_reservados)

    encontrar_reserva(nuevas_reservas)

    convertir_primera_reserva(nuevas_reservas)
  end

  @doc """
  Función que crea nuevas reservas agregándolas a una lista existente de reservas
  - Parámetros:
    - lista_reservas: lista inicial de reservas
  Retorna la lista actualizada con las nuevas reservas agregadas
  Se usan mapas para representar cada reserva con las claves :cliente, :habitacion y :dias
  """
  def crear_reservas(lista_reservas) do
    lista_reservas ++
      [
        %{cliente: "Juan", habitacion: 200, dias: 2},
        %{cliente: "Sara", habitacion: 575, dias: 5},
        %{cliente: "Victor", habitacion: 105, dias: 6}
      ]
  end

  @doc """
  Función que calcula el total de días reservados sumando los días de cada reserva usando Enum.reduce/3
  - Parámetros:
    - nuevas_reservas: lista de reservas
  Retorna el total de días reservados
  Se asume que cada reserva es un mapa con la clave :dias que indica la cantidad de días reservados
  """
  def calcular_dias_reserva(nuevas_reservas) do
    Enum.reduce(nuevas_reservas, 0, fn %{dias: dias}, acc -> acc + dias end)
  end

  @doc """
  Función que encuentra la primera reserva con más de 5 días usando Enum.find/2
  - Parámetros:
    - nuevas_reservas: lista de reservas
  Retorna la primera reserva que cumple la condición o nil si no se encuentra ninguna
  Se asume que cada reserva es un mapa con la clave :dias que indica la cantidad de días reservados
  """
  def encontrar_reserva(nuevas_reservas) do
    reserva_5_dias = Enum.find(nuevas_reservas, fn %{dias: dias} -> dias > 5 end)
    IO.inspect(reserva_5_dias)
  end

  @doc """
  Función que convierte la primera reserva de la lista en una tupla usando pattern matching y la función hd/1
  - Parámetros:
    - nuevas_reservas: lista de reservas
  Retorna la tupla con los datos de la primera reserva y la imprime
  Se asume que cada reserva es un mapa con las claves :cliente, :habitacion y :dias
  Se imprime el nombre del cliente accediendo al primer elemento de la tupla
  Además, se imprime la tupla completa
  """
  def convertir_primera_reserva(nuevas_reservas) do
    primera_reserva = hd(nuevas_reservas)

    tupla_reserva = {primera_reserva.cliente, primera_reserva.habitacion, primera_reserva.dias}

    IO.inspect(tupla_reserva)

    IO.puts("Cliente: #{elem(tupla_reserva, 0)}")
  end
end

Main.main()
