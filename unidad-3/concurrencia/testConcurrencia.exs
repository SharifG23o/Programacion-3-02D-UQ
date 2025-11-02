#spawn -> spawn/1, spawn/3
#Este elemento crea un proceso aisaldo que se ejecuta, no retorna respuesta, solo crea un proceso y devuelve su PID

#spawn(fun)

result = spawn(fn ->
    IO.puts("Hola spawn/1")
end)

IO.puts("PID del proceso spawn/1: #{inspect(result)}")

#spawn(Module, :function_name, [arg1, arg2])



  defmodule Concurrencia do
    def saludo(msg) do
     msg |> IO.puts()

  end

end

rst = spawn(Concurrencia, :saludo, ["Hola spawn/3"])
IO.puts("PID de spawn/3: #{inspect(rst)}")

#--------------------------------------------------------------------------------------------------------------------------------#
# task.async
#Task -> permite crear procesos que retornan valores
#Task.async() -> Crea un proceso y retorna un struct Task -> Task.async/1, Task.async/3
#Task.await() -> Espera a que el proceso termine y retorna el valor


#task.async(fun)
resulTask = Task.async(fn ->

  "Hola task.async/1"

end)

IO.puts("Struct task.async/1: #{inspect(resulTask)}")

#Task.async(module, :function_name, [arg1, arg2])


#Task.await() -> Task.await/2
#Task.await(task, timeout // 5000)

answer = Task.await(resulTask)
IO.puts(answer)
IO.puts("Respuesta de Tasl.await/2: #{answer}")
