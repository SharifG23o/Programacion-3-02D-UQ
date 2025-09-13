defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento Estructuras ejercicio 27 - espacio académico programación 3.
  Autores: [Sharif Giraldo y Juan Sebastián Hernández]
  Fecha de creación: 2025-09-04
  Fecha de última modificación: 2025-09-13
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  - No recibe parámetros
  Maneja una lista de tuplas que representan estudiantes (nombre, edad, nota)
  """
  def main() do
    estudiantes = [
      {"Sharif", 19, 5.0},
      {"Juan", 18, 5.0},
      {"Alicia", 20, 3.5},
      {"Alberto", 17, 2.5},
      {"Adriana", 20, 1.0}
    ]

    filtrar_estudiantes(estudiantes)

    estudiantes_mapas = convertir_lista(estudiantes)
    agrupar_estudiantes(estudiantes_mapas)
  end

  @doc """
  Función que filtra los estudiantes con una nota mayor o igual a 3.0 usando Enum.filter/2
  - Parámetros:
    - estudiantes: lista de tuplas con datos de estudiantes (nombre, edad, nota)
  Retorna una lista de estudiantes aprobados e imprime el resultado
  """
  def filtrar_estudiantes(estudiantes) do
    aprobados = Enum.filter(estudiantes, fn est -> elem(est, 2) >= 3.0 end)
    IO.inspect(aprobados)
  end

  @doc """
  Función que convierte la lista de tuplas de estudiantes a una lista de mapas usando Enum.map/2
  - Parámetros:
    - estudiantes: lista de tuplas con los datos de los estudiantes
  Retorna una lista de mapas con los datos de los estudiantes e imprime el resultado
  """
  def convertir_lista(estudiantes) do
    lista_convertida =
      Enum.map(estudiantes, fn {nombre, edad, nota} ->
        %{nombre: nombre, edad: edad, nota: nota}
      end)

    IO.inspect(lista_convertida)
    lista_convertida
  end

  @doc """
  Función que agrupa los estudiantes por rangos de edad usando Enum.group_by/2 y la
  estructura condicional cond
  - Parámetros:
   - estudiantes_mapas: lista de mapas con los datos de los estudiantes
  Retorna un mapa donde las claves son los rangos de edad y los valores son listas de estudiantes en esos rangos e imprime el resultado
  Rango de edades:
    - :menores_20 para estudiantes menores de 20 años
    - :entre_20_25 para estudiantes entre 20 y 25 años (inclusive)
    - :mayores_25 para estudiantes mayores de 25 años
  """
  def agrupar_estudiantes(estudiantes_mapas) do
    agrupados =
      Enum.group_by(estudiantes_mapas, fn est ->
        cond do
          est.edad < 20 -> :menores_20
          est.edad <= 25 -> :entre_20_25
          true -> :mayores_25
        end
      end)

    IO.inspect(agrupados)
  end
end

Main.main()
