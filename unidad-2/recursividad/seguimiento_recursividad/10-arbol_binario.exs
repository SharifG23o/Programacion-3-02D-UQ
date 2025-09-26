defmodule Main do
  @moduledoc """
  Módulo Main del Taller de seguimiento recursividad ejercicio 10 - espacio académico programación 3.
  Autores: [Sharif Giraldo, Juan Sebastián Hernández y Santiago Ospina Sánchez]
  Fecha de creación: 2025-09-18
  Fecha de última modificación: 2025-09-25
  Licencia: GNU GPLv3
  """

  @doc """
  Función principal que ejecuta el programa
  Muestra las rutas en un árbol binario que suman un valor objetivo
  """
  def main do
    tree =
      {5, {4, {11, {7, nil, nil}, {2, nil, nil}}, nil},
       {8, {13, nil, nil}, {4, nil, {1, nil, nil}}}}

    IO.inspect(rutas_con_suma(tree, 22))
  end

  @doc """
  Caso base donde el nodo es nil, se retorna una lista vacía
  - Parámetros:
    - nil: nodo vacío
    - _objetivo: valor objetivo (no se usa en este caso)
  Retorna una lista vacía dado que no hay rutas en un nodo vacío
  """
  def rutas_con_suma(nil, _objetivo), do: []

  @doc """
  Función que encuentra todas las rutas desde la raíz hasta las hojas
  que suman un valor objetivo
  - Parámetros:
    - {valor, izq, der}: nodo del árbol binario con su valor y subárboles izquierdo y derecho
    - objetivo: valor objetivo que la suma de la ruta debe alcanzar
  Retorna una lista de listas, donde cada sublista es una ruta que suma el valor objetivo
  """
  def rutas_con_suma({valor, nil, nil}, objetivo) when valor == objetivo,
    do: [[valor]]

  @doc """
  Función que maneja el caso donde el nodo es una hoja pero no cumple con el objetivo
  - Parámetros:
    - {valor, nil, nil}: nodo hoja del árbol binario con su valor
    - _objetivo: valor objetivo que la suma de la ruta debe alcanzar (no se usa en este caso)
  Retorna una lista vacía dado que no hay rutas que sumen el valor objetivo
  """
  def rutas_con_suma({valor, nil, nil}, _objetivo),
    do: []

  @doc """
  Función que maneja el caso general de un nodo con hijos
  - Parámetros:
    - {valor, izq, der}: nodo del árbol binario con su valor y subárboles izquierdo y derecho
    - objetivo: valor objetivo que la suma de la ruta debe alcanzar
  Retorna una lista de listas, donde cada sublista es una ruta que suma el valor objetivo
  """
  def rutas_con_suma({valor, izq, der}, objetivo) do
    nuevo_objetivo = objetivo - valor

    rutas_izq = rutas_con_suma(izq, nuevo_objetivo)
    rutas_der = rutas_con_suma(der, nuevo_objetivo)

    for(ruta <- rutas_izq, do: [valor | ruta]) ++
      for ruta <- rutas_der, do: [valor | ruta]
  end
end

Main.main()
