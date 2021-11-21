require './requires'

puts "Which pokemon do you want to see?"
pokemon_to_get = gets.chomp
pokemon_json = Client.get_pokemon(pokemon_to_get)
