contactos = {
  'Maria' => '55026619',
  'Pedro' => '89524437',
  'Juan' => '86053475',
  'Alberto' => '83389539',
}
def mostrar_contactos(contactos)
  puts "Listado de contactos:"
  contactos.each do |nombre, celular|
    puts "#{nombre}: #{celular}"
  end
end
loop do
  mostrar_contactos(contactos)
  print "Introduce el nombre para buscar el número de celular (o escribe 'salir' para terminar): "
  nombre_buscar = gets.chomp
  break if nombre_buscar.downcase == 'salir'
  nombre_normalizado = nombre_buscar.capitalize

  if contactos.key?(nombre_normalizado)
    puts "El número de celular de #{nombre_normalizado} es: #{contactos[nombre_normalizado]}"
  else
    puts "El nombre '#{nombre_buscar}' no está en la lista de contactos."
  end
end

puts "Programa terminado."
