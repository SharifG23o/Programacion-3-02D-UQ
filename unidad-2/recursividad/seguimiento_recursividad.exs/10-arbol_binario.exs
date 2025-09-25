defmodule Main do
  def main do
    tree = {5,
             {4, {11, {7, nil, nil}, {2, nil, nil}}, nil},
             {8, {13, nil, nil}, {4, nil, {1, nil, nil}}}}

    IO.inspect(rutas_con_suma(tree, 22))
  end

  def rutas_con_suma(nil, _objetivo), do: []

  def rutas_con_suma({valor, nil, nil}, objetivo) when valor == objetivo,
    do: [[valor]]

  def rutas_con_suma({valor, nil, nil}, _objetivo),
    do: []

  def rutas_con_suma({valor, izq, der}, objetivo) do
    nuevo_objetivo = objetivo - valor

    rutas_izq = rutas_con_suma(izq, nuevo_objetivo)
    rutas_der = rutas_con_suma(der, nuevo_objetivo)

    (for ruta <- rutas_izq, do: [valor | ruta]) ++
    (for ruta <- rutas_der, do: [valor | ruta])
  end
end

Main.main()
