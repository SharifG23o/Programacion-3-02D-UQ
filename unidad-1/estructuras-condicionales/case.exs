defmodule Main do
  def main() do

    char = Util.input("Ingrese un carácter: ", :string)
    condicion_case(char)


  end

  def condicion_case(char) do

    case char do

    {:ok, valor} when valor  -> Util.show_message("Vocal")
    {:error, valor} -> Util.show_message("Vocal")
    "i" -> Util.show_message("Vocal")
    "o" -> Util.show_message("Vocal")
    "u" -> Util.show_message("Vocal")
    _ -> Util.show_message("Consonante")

    end

  end
end

Main.main()
