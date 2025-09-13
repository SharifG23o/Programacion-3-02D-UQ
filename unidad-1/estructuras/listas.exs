list = ["Sharif", 19, :ok]

#añadir un elemento pero no se guarda

[:ingeniero | list]

#guardar una nueva lista

list2 = [:ingeniero | list]


#agregar al final

list2 = list2 ++ [2024]

#pattern matching

[head | tail ] = list2

# asigna head al primer elemento y tail al resto de la lista head tail

# patron 1 a 1

[a,b,c] = list

# diferencia de elementos

list_2 -- list

# traer un elemento específico usando enum

 Enum.at(list_2, 3, nil)

 
