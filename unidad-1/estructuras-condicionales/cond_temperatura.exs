
defmodule Main do
  def main() do

    temperatura_celcius = Util.input("Ingrese la temperatura en grados Celsius: ", :number)
    condicion_temperatura(temperatura_celcius)
  end

  def condicion_temperatura(temperatura_celsius) do

  cond do

  temperatura_celsius < 15 -> Util.show_message(" Frío")
  temperatura_celsius >= 15 and temperatura_celsius <= 25 -> Util.show_message(" Templado")
  temperatura_celsius > 25 -> Util.show_message(" Caliente")
  true -> Util.show_message("Caluroso")
  end
  end
end

Main.main()
