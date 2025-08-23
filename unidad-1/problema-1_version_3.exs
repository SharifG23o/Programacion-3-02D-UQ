# Módulo es equivalente a una clase en java
# Todo lo que empieza en mayúscula es un módulo o una estructura

# Módulo -> UpperCamelCase
defmodule ProblemaUnoVersion3 do
  def mostrar_mensaje_con_util() do
    # Llamamos a la función mostrar_mensaje del módulo Util
    Util.mostrar_mensaje("Bienvenidos a la empresa Once Ltda")

  end
end

ProblemaUnoVersion3.mostrar_mensaje_con_util()
