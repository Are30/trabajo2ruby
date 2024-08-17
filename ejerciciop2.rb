class Calcular
  def initialize(numero)
    @numero = numero.to_s
  end

  def suma_pares
    suma = 0
    @numero.each_char do |char|
      digito = char.to_i
      suma += digito if digito.even?
    end
    suma
  end

  def suma_impares
    suma = 0
    @numero.each_char do |char|
      digito = char.to_i
      suma += digito if digito.odd?
    end
    suma
  end
end

print "Introduce un número: "
numero = gets.chomp

calculadora = Calcular.new(numero)

puts "La suma de los números pares en #{numero} es: #{calculadora.suma_pares}"
puts "La suma de los números impares en #{numero} es: #{calculadora.suma_impares}"
